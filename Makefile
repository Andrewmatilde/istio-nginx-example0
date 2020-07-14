install :
	kubectl apply -f nginx.yaml

run :
	kubectl apply -f nginx-gateway.yaml
	kubectl port-forward service/istio-ingressgateway -n istio-system 30966:80 --address 0.0.0.0

delay :
	kubectl apply -f nginx-gateway-delay.yaml
	kubectl port-forward service/istio-ingressgateway -n istio-system 30966:80 --address 0.0.0.0