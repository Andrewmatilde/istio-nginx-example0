# README

simple example of istio fault injection 

## Prerequisites

Install [istio](https://istio.io/latest/docs/setup/getting-started/)

## How to Install

First create deployment&service...

```
make install
```

Wait for the pod ready, and then

```
make run
```

To run the nginx with not fault

```
make delay
```

To run the nginx with 5s delay

```
make uninstall
```

To uninstall all the project