import h5py

filename = 'fresh_stale.h5'
with h5py.File(filename, 'r') as f:
    if 'labels' in f.attrs:
        labels = f.attrs['labels']
        print(labels) 