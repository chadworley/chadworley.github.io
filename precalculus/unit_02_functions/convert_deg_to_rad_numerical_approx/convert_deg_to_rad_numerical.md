GROUP
```{.python3 .run}
import textwrap

import numpy as np

used = []
for _ in range(10):
    x = np.random.randint(10, 100, 1)[0]
    y = np.random.randint(10, 100, 1)[0]
    while (x, y) in used:
        x = np.random.randint(10, 100, 1)[0]
        y = np.random.randint(10, 100, 1)[0]
    used.append((x, y))
    q = rf"""
    1. What is the sum of ${x}$ and ${y}$?
    = {int(x+y)}
    """
    print(textwrap.dedent(q))
```
END_GROUP