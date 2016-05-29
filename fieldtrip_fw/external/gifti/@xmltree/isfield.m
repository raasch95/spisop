function F = isfield(tree,uid,parameter)
% XMLTREE/ISFIELD Is parameter a field of tree{uid} ?
% FORMAT F = isfield(tree,uid,parameter)
%
% tree      - a tree
% uid       - uid of the element
% parameter - a field of the root tree
% F         - 1 if present, 0 otherwise
%_______________________________________________________________________
%
% Is parameter a field of tree{uid} ?
%_______________________________________________________________________
% Copyright (C) 2002-2008  http://www.artefact.tk/

% Guillaume Flandin <guillaume@artefact.tk>
% $Id: isfield.m 3261 2011-03-31 15:06:56Z roboos $

error(nargchk(3,3,nargin));

F = zeros(1,length(uid));
for i=1:length(uid)
    if isfield(tree.tree{uid(i)},parameter)
        F(i) = 1;
    end
end
