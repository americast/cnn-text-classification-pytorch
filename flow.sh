# Prepare the data
python3 prepare.py ../data/full_data_cnn
python3 prepare.py ../data/train_data_cnn
python3 prepare.py ../data/test_data_cnn

# Train
python3 train.py model ../data/full_data_cnn.char_to_idx ../data/full_data_cnn.word_to_idx ../data/full_data_cnn.tag_to_idx ../data/train_data_cnn.csv 100

# Eval
python3 evaluate.py   model.epoch100 ../data/full_data_cnn.char_to_idx ../data/full_data_cnn.word_to_idx ../data/full_data_cnn.tag_to_idx ../data/test_data_cnn.csv
