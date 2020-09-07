function varargout = ISAnalysis(varargin)
% ISAnalysis MATLAB code for ISAnalysis.fig
%      ISAnalysis, by itself, creates a new ISAnalysis or raises the existing
%      singleton*.
%
%      H = ISAnalysis returns the handle to a new ISAnalysis or the handle to
%      the existing singleton*.
%
%      ISAnalysis('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ISAnalysis.M with the given input arguments.
%
%      ISAnalysis('Property','Value',...) creates a new ISAnalysis or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ISAnalysis_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ISAnalysis_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ISAnalysis

% Last Modified by GUIDE v2.5 06-Sep-2020 22:34:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @ISAnalysis_OpeningFcn, ...
    'gui_OutputFcn',  @ISAnalysis_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ISAnalysis is made visible.
function ISAnalysis_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ISAnalysis (see VARARGIN)

% Choose default command line output for ISAnalysis
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
handles.uitable2.Data = [];
% UIWAIT makes ISAnalysis wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ISAnalysis_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num = get(handles.edit1,'String');
%num = num{1};
num = str2num(num);
[N,T1,Y1,C1,T2,Y2,C2,T3,Y3,C3] = Import(num)
cla(handles.axes1);
plot(handles.axes1, T1, Y1, T2, Y2, T3, Y3);
J = get(handles.axes2,'ButtonDownFcn');
plot(handles.axes2, Y2);
set(handles.axes2,'ButtonDownFcn',J);



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n1 = get(handles.edit2,'String');
%n1 = n1{1};
n1 = str2num(n1);
n1 = floor(n1*1);
n2 = get(handles.edit3,'String');
%n2 = n2{1};
n2 = str2num(n2);
n2 = floor(n2*1);
num = get(handles.edit1,'String');
%num = num{1};
num = str2num(num);
[N,T1,Y1,C1,T2,Y2,C2,T3,Y3,C3] = Import(num);
if n2>length(T1)
    n2 = length(T1);
    set(handles.edit3,'String',num2str(n2));
end
if n1<1
    n1 = 1;
    set(handles.edit2,'String',num2str(n1));
end

plot(handles.axes3, T1(n1:n2), Y1(n1:n2), T2(n1:n2), Y2(n1:n2), T3(n1:n2), Y3(n1:n2));
plot(handles.axes4, T1(n1:n2), C1(n1:n2), T2(n1:n2), C2(n1:n2), T3(n1:n2), C3(n1:n2));

function [Ynew,a,b,c] = FitGaussian(X,Y)
P0 = [ (max(X)+min(X))/2, (max(X)-min(X))/3, max(Y)]; %First Guess: Center, Width, Height
fun = @(p) Error(p,X,Y);
options = optimset('MaxIter',10000,'MaxFunEvals',10000,'TolFun',1e-10,'TolX',1e-10);
P = fminsearch(fun,P0,options);
[~,Ynew] = Error(P,X,Y);
b = P(1);%Center
c = P(2);%Sigma
a = P(3);%Amplitude

function [E,Ynew] = Error(P,X,Y)
b = P(1);
c = P(2);
a = P(3);
%This expression gives c immediately as the FWHM
Ynew = a.*exp(-((4*log(2)).*(X-b).^2)./(c.^2));
E = sum((Y-Ynew).^2);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q = get(handles.axes3,'Children');
X1 = get(q(1),'XData');
X2 = get(q(2),'XData');
X3 = get(q(3),'XData');
Y1 = get(q(1),'YData');
Y2 = get(q(2),'YData');
Y3 = get(q(3),'YData');
q = get(handles.axes4,'Children');
C1 = get(q(1),'YData');
C2 = get(q(2),'YData');
C3 = get(q(3),'YData');
C1 = mean(C1);
C2 = mean(C2);
C3 = mean(C3);
[Ynew1,a1,b1,c1] = FitGaussian(X1,Y1);
[Ynew2,a2,b2,c2] = FitGaussian(X2,Y2);
[Ynew3,a3,b3,c3] = FitGaussian(X3,Y3);
cla(handles.axes3);
plot(handles.axes3,X1,Y1,X2,Y2,X3,Y3,X1,Ynew1,X2,Ynew2,X3,Ynew3);
set(handles.edit4,'String',num2str(a1,9));
set(handles.edit5,'String',num2str(a2,9));
set(handles.edit6,'String',num2str(a3,9));
set(handles.edit7,'String',num2str(b1,9));
set(handles.edit8,'String',num2str(b2,9));
set(handles.edit9,'String',num2str(b3,9));
set(handles.edit10,'String',num2str(c1,9));
set(handles.edit11,'String',num2str(c2,9));
set(handles.edit12,'String',num2str(c3,9));
set(handles.edit13,'String',num2str(C1,9));
set(handles.edit14,'String',num2str(C2,9));
set(handles.edit15,'String',num2str(C3,9));

data = strcat(...
    num2str(a1,9),',',...
    num2str(b1,9),',',...
    num2str(c1,9),',',...
    num2str(a2,9),',',...
    num2str(b2,9),',',...
    num2str(c2,9),',',...
    num2str(a3,9),',',...
    num2str(b3,9),',',...
    num2str(c3,9),',',...
    num2str(C1,9),',',...
    num2str(C2,9),',',...
    num2str(C3,9));
clipboard('copy',data)




function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
if eventdata.Key == 'd' %Move Right
    n1 = get(handles.edit2,'String');
    n2 = get(handles.edit3,'String');
    n1 = str2num(n1);
    n2 = str2num(n2);
    n1 = n1+5;
    n2 = n2+5;
    n1 = num2str(n1);
    n2 = num2str(n2);
    set(handles.edit2,'String',n1);
    set(handles.edit3,'String',n2);
    pushbutton2_Callback(@pushbutton2_Callback,eventdata, handles);
    pushbutton3_Callback(@pushbutton3_Callback,eventdata, handles);
elseif eventdata.Key == 'a' %Move Left
    n1 = get(handles.edit2,'String');
    n2 = get(handles.edit3,'String');
    n1 = str2num(n1);
    n2 = str2num(n2);
    n1 = n1-5;
    n2 = n2-5;
    n1 = num2str(n1);
    n2 = num2str(n2);
    set(handles.edit2,'String',n1);
    set(handles.edit3,'String',n2);
    pushbutton2_Callback(@pushbutton2_Callback,eventdata, handles);
    pushbutton3_Callback(@pushbutton3_Callback,eventdata, handles);
elseif eventdata.Key == 'w' %Sharpen
    n1 = get(handles.edit2,'String');
    n2 = get(handles.edit3,'String');
    n1 = str2num(n1);
    n2 = str2num(n2);
    n1 = n1+5;
    n2 = n2-5;
    n1 = num2str(n1);
    n2 = num2str(n2);
    set(handles.edit2,'String',n1);
    set(handles.edit3,'String',n2);
    pushbutton2_Callback(@pushbutton2_Callback,eventdata, handles);
    pushbutton3_Callback(@pushbutton3_Callback,eventdata, handles);
elseif eventdata.Key == 's' %Broaden
    n1 = get(handles.edit2,'String');
    n2 = get(handles.edit3,'String');
    n1 = str2num(n1);
    n2 = str2num(n2);
    n1 = n1-5;
    n2 = n2+5;
    n1 = num2str(n1);
    n2 = num2str(n2);
    set(handles.edit2,'String',n1);
    set(handles.edit3,'String',n2);
    pushbutton2_Callback(@pushbutton2_Callback,eventdata, handles);
    pushbutton3_Callback(@pushbutton3_Callback,eventdata, handles);
    
elseif eventdata.Key == 'e'
    n1 = get(handles.edit1,'String');
    n1 = str2num(n1);
    n1 = n1+1;
    n1 = num2str(n1);
    set(handles.edit1,'String',n1);
    pushbutton1_Callback(@pushbutton1_Callback,eventdata, handles);
    
elseif eventdata.Key == 'q'
    n1 = get(handles.edit1,'String');
    n1 = str2num(n1);
    n1 = n1-1;
    n1 = num2str(n1);
    set(handles.edit1,'String',n1);
    pushbutton1_Callback(@pushbutton1_Callback,eventdata, handles);
    
    
elseif eventdata.Key == 'space'
    
    %get(handles.edit4,'String',num2str(a1,9));
    %get(handles.edit5,'String',num2str(a2,9));
    %get(handles.edit6,'String',num2str(a3,9));

    DATA{1} = get(handles.edit1,'String');
    
    DATA{2} = get(handles.edit7,'String');
    DATA{3} = get(handles.edit10,'String');
    
    DATA{4} = get(handles.edit8,'String');
    DATA{5} = get(handles.edit11,'String');
    
    DATA{6} = get(handles.edit9,'String');
    DATA{7} = get(handles.edit12,'String');
    
    DATA{8} = get(handles.edit13,'String');
    DATA{9} = get(handles.edit14,'String');
    DATA{10} = get(handles.edit15,'String');
    
    i = size(handles.uitable2.Data,1);
    handles.uitable2.Data=flipud(handles.uitable2.Data);
    for k = 1:10
    handles.uitable2.Data{i+1,k} = DATA{k};
    end    
    handles.uitable2.Data=flipud(handles.uitable2.Data);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
DATA = get(handles.uitable2,'Data');
data = zeros(size(DATA));
for i=1:size(DATA,1)
    for j = 1:size(DATA,2)
        data(i,j) = str2num(cell2mat(DATA(i,j)));
    end
end
save('Hallo.mat','data');

% --- Executes on mouse press over axes background.
function axes2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
win = 125; %Window Size
C = eventdata.IntersectionPoint(1);
n1 = C - win;
n2 = C + win;
set(handles.edit2,'String',num2str(n1));
set(handles.edit3,'String',num2str(n2));
pushbutton2_Callback(@pushbutton2_Callback,eventdata, handles);
pushbutton3_Callback(@pushbutton3_Callback,eventdata, handles);



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
