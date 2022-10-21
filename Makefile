install:
	kubectl apply -f httpbin.yaml
	kubectl apply -f sleep.yaml

mirror:
	kubectl apply -f mirroring-rule.yaml

curl:
	./curl.sh

log:
	kubectl logs -l app=httpbin --prefix=true --tail 1 -f