cd ..

# Set directories
$result_dir = "./results_ablations"
$data_dir = "./data"

# Run Vicuna experiments / TriviaQA
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936 --input-parts question; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936 --input-parts question answer qualitative; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936 --input-parts question answer quantitative; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936 --input-parts question cot_answer; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936 --input-parts question cot_answer qualitative; `
python run_regression_experiment.py --model-identifier lmsys/vicuna-7b-v1.5 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00003369 --weight-decay 0.008936 --input-parts question cot_answer quantitative; `

# Run GPT-3.5 experiments / TriviaQA
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362 --input-parts question; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362 --input-parts question answer qualitative; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362 --input-parts question answer quantitative; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362 --input-parts question cot_answer; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362 --input-parts question cot_answer qualitative; `
python run_regression_experiment.py --model-identifier gpt-3.5-turbo-0125 --dataset-name trivia_qa --device cpu --num-training-steps 200 --num-in-context-samples 10 --data-dir $data_dir --result-dir $result_dir --lr 0.00001625 --weight-decay 0.01362 --input-parts question cot_answer quantitative
