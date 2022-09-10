//
//  LocationsView.swift
//  Final Project
//
//  Created by Max will on 8/25/22.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    @StateObject private var viewModel = LocationViewModel()
@EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        
        ZStack {
           mapLayer
                .ignoresSafeArea()
                .onAppear{
                    viewModel.checkIfLocationServiceIsEnabled()
                }
                
            
            VStack(spacing: 0) {
                header
                    .padding()
                Spacer()
                locationsPreviewStacks
            }
        }
        .sheet(item: $vm.sheetLocation, onDismiss: nil) { location in
            LocationDetailView(location: location)
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}

extension LocationsView {
    
    private var header: some View {
        VStack {
            Button(action: vm.toggleLocationList) {
                Text(vm.mapLocation.name + ", " + vm.mapLocation.cityName)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame( height: 55)
                    .frame(maxWidth: .infinity)
                    .overlay(alignment: .leading) {
            Image(systemName: "arrow.down")
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding()
                        .rotationEffect(Angle(degrees: vm.showLocationList ? 180 : 0))
                }
            }
            if vm.showLocationList{
            LocationsListView()
            }
        }
        .background(.ultraThinMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
    }
    
    private var mapLayer: some View {
        
        Map(coordinateRegion: $vm.mapRegion, annotationItems: vm.locations, annotationContent: { location in
            MapAnnotation(coordinate: location.coordinates){
                LocationMapAnnotationView()
                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                    .shadow(radius: 10)
                    .onTapGesture {
                        vm.showNextLocation(location: location)
                    }
            }
        })
    }
    
    private var locationsPreviewStacks: some View {
        ZStack{
            ForEach(vm.locations) { location in
                if vm.mapLocation == location {
                    LocationPreviewView(location: location)
                        .shadow(color: .black.opacity(0.3), radius: 20)
                        .padding()
                        .transition(.asymmetric(
                            insertion: .move(edge: .trailing),
                            removal: .move(edge: .leading)))
                }
            }
        }
    }
}

final class LocationViewModel: NSObject, ObservableObject,
    CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    
    func checkIfLocationServiceIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Show an alert letting them know this is off and to go turn it on.")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted due to your parental controls.")
        case .denied:
            print("You have denied this app location permission. Go into settings to change it")
        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
    

}
    


