nohup tensorflow_model_server --model_base_path=/app/mobile_v2 --rest_api_port=9000 --model_name=ImageClassifier &

flask run --host=0.0.0.0