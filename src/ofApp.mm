#include "ofApp.h"
//--------------------------------------------------------------
void ofApp::setup(){	
    ofBackground(0);
    
    for(int i =1; i==1000; i++){
        x[i]=i;
        y[i]=400;
    }
    bikex = x[200];
    bikey = 400;
    time=0;
    n = 50000;

}

//--------------------------------------------------------------
void ofApp::update(){
    
    time=time+1;
}

//--------------------------------------------------------------
void ofApp::draw(){
    ofSetColor(100, 100, 100);
    ofSetLineWidth(5);
    for(int i =0; i==1000; i++){
        ofCircle(x[i],y[i],1);
    }
    ofSetColor(20, 100, 155);
    ofRect(bikex, bikey, 100, 100);
    if(n+1==time){
        bikey = bikey - 4;
    }else if(n+2==time){
        bikey = bikey - 8;
    }else if(n+3==time){
        bikey = bikey - 12;
    }else if(n+4==time){
        bikey = bikey - 16;
    }else if(n+5==time){
        bikey = bikey - 20;
    }
    else if(n+10==time){
            bikey = y[200];
        
        }
}

//--------------------------------------------------------------
void ofApp::exit(){
}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){
 n=time;
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}
