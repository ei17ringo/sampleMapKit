//
//  ViewController.m
//  sampleMapKit
//
//  Created by Eriko Ichinohe on 2015/09/17.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //MapViewオブジェクトを生成
    MKMapView *mapView = [[MKMapView alloc] init];
    
    //大きさ、位置を決定
    mapView.frame = CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height-20);
    
    //表示位置を設定
    CLLocationCoordinate2D co;
    
    //アヤラの位置を設定
    co.latitude = 10.317347; //緯度
    co.longitude = 123.905759;  //経度
    
    [mapView setCenterCoordinate:co];
    
    //縮尺を指定
    MKCoordinateRegion cr = mapView.region;
    
    //地図の範囲を指定（緯度）
    cr.span.latitudeDelta = 0.02;
    
    //地図の範囲を指定（経度)
    cr.span.longitudeDelta = 0.02;
    
    cr.center = co;
    
    [mapView setRegion:cr];
    
    //地図の表示種類設定
    mapView.mapType = MKMapTypeStandard;
    
    //ピンを立てる
    //アヤラ
    MKPointAnnotation *pin =[[MKPointAnnotation alloc] init];
    pin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759);
    
    pin.title = @"Ayala";
    pin.subtitle = @"セブで一番大きい";
    
    [mapView addAnnotation:pin];
    
    MKPointAnnotation *pin2 =[[MKPointAnnotation alloc] init];
    pin2.coordinate = CLLocationCoordinate2DMake(10.311715, 123.918332);
    pin2.title = @"Shumart";
    pin2.subtitle = @"セブで二番目に大きい";

    [mapView addAnnotation:pin2];
    
    MKPointAnnotation *pin3 =[[MKPointAnnotation alloc] init];
    pin3.coordinate = CLLocationCoordinate2DMake(10.314276, 123.90535);
    pin3.title = @"2Quad";
    pin3.subtitle = @"NexSeed";
    
    [mapView addAnnotation:pin3];
    
    
    //表示するためにViewに追加
    [self.view addSubview:mapView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
