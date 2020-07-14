install :
	kubectl apply -f nginx.yaml
	kubectl apply -f nginx-gateway.yaml

run :
	kubectl apply -f nginx-gateway.yaml
	kubectl port-forward service/istio-ingressgateway -n istio-system 30966:80 --address 0.0.0.0

delay :
	kubectl apply -f nginx-gateway-delay.yaml
	kubectl port-forward service/istio-ingressgateway -n istio-system 30966:80 --address 0.0.0.0

uninstall :
	kubectl delete deployment istio-nginx-example0-v1
	kubectl delete service istio-nginx-example0
	kubectl delete VirtualService istio-nginx
	kubectl delete Gateway istio-nginx-example0-gateway