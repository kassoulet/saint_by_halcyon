import pickle, json, sys
calls=pickle.load(open(sys.argv[1],'rb'))
json.dump([dict(v=[x.hex() for x in c['v']],pre=c['pre'].hex(),post=c['post'].hex(),tex=c['tex'],shd=c['shd'],s=c['s']) for c in calls],open(sys.argv[2],'w'))
print(set((c['tex'],c['shd'],c['s']) for c in calls))
