fn = "at1121exam_examples.Rmd"
shortfn = strsplit(fn,"_")[[1]][1]
nlow = 1
nhigh = 20

sss = '<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Practice Test Selector</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 20px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        #linksContainer {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        #linksContainer a {
            padding: 8px 15px;
            border: 1px solid #007bff;
            border-radius: 5px;
            text-decoration: none;
            color: #007bff;
            background-color: #e7f3ff;
            transition: background-color 0.2s, color 0.2s;
        }
        #linksContainer a:hover {
            background-color: #007bff;
            color: white;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <h1>Select Practice Test</h1>

    <label for="testNumber">Choose a test number (NLOW-NHIGH):</label>
    <input type="number" id="testNumber" min="NLOW" max="NHIGH" value="NLOW">

    <div id="linksContainer" class="hidden">
        <a id="exampleLink" href="#" target="_blank">View Example Test PDF</a>
        <a id="solutionLink" href="#" target="_blank">View Solution PDF</a>
    </div>

    <script>
        const testNumberInput = document.getElementById("testNumber");
        const linksContainer = document.getElementById("linksContainer");
        const exampleLink = document.getElementById("exampleLink");
        const solutionLink = document.getElementById("solutionLink");

        function updateLinks() {
            let num = parseInt(testNumberInput.value, 10);

            // Basic validation
            if (isNaN(num) || num < NLOW || num > NHIGH) {
                linksContainer.classList.add("hidden"); // Hide links if input is invalid
                return;
            }

            const formattedNum = String(num).padStart(3, "0");

            const exampleFileName = `at1110example_v${formattedNum}.pdf`;
            const solutionFileName = `at1110example_SOL_v${formattedNum}.pdf`;

            exampleLink.href = exampleFileName;
            exampleLink.textContent = `View Test ${num} (${exampleFileName})`;

            solutionLink.href = solutionFileName;
            solutionLink.textContent = `View Solution ${num} (${solutionFileName})`;

            linksContainer.classList.remove("hidden"); // Show links once valid input
        }

        // Add event listener to update links when input changes
        testNumberInput.addEventListener("input", updateLinks);

        // Call updateLinks initially to set up for the default value (1) on page load
        updateLinks();
    </script>
</body>
</html>'

makeem = function(fn,shortfn,nlow,nhigh){
    directory_path = paste0(shortfn,"_examples")
    if (!dir.exists(directory_path)) {
        dir.create(directory_path)
    }
    wid = nhigh-nlow+1
    for(jjj in nlow:nhigh){
        # rmarkdown::render(input = fn,
        #                   output_file = paste0(directory_path,"/",shortfn,"_v",sprintf("%03d",jjj)),
        #                   params = list(rseed = jjj,
        #                                 showsol = F))
        rmarkdown::render(input = fn,
                          output_file = paste0(directory_path,"/",shortfn,"_SOL_v",sprintf("%03d",jjj)),
                          params = list(rseed = jjj,
                                        showsol = T))
    }
    
    sss = gsub("at1110example",shortfn,sss,fixed=T)
    sss = gsub("NLOW",nlow,sss,fixed=T)
    sss = gsub("NHIGH",nhigh,sss,fixed=T)
    fileConn<-file(paste0(directory_path,"/",shortfn,".html"))
    writeLines(sss, fileConn)
    close(fileConn)
}

makeem(fn,shortfn,nlow,nhigh)
