import 'package:flutter/material.dart';

class UiControlsScreens extends StatelessWidget {
  static const name = 'ui_controls_screens';

  const UiControlsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Controls'),
      ),
      body: const _UiControlView(),
    );
  }
}

class _UiControlView extends StatefulWidget {
  const _UiControlView();

  @override
  State<_UiControlView> createState() => _UiControlViewState();
}

enum Transportations { car, plane, boat, submarine }

class _UiControlViewState extends State<_UiControlView> {
  bool isDeveloper = true;
  Transportations selectedTransportation = Transportations.car;
  bool wantsBreakFast = false;
  bool wantsLunch = true;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles Adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportations.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportations.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por Avión'),
              value: Transportations.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportations.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por Barco'),
              value: Transportations.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportations.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por Submarino'),
              value: Transportations.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportations.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayunar?'),
          value: wantsBreakFast, 
          onChanged: (value)=> setState(() {
          wantsBreakFast = !wantsBreakFast;
        })),

        CheckboxListTile(
          title: const Text('Almorzar?'),
          value: wantsLunch, 
          onChanged: (value)=> setState(() {
          wantsLunch = !wantsLunch;
        })),

        CheckboxListTile(
          title: const Text('Cenar?'),
          value: wantsDinner, 
          onChanged: (value)=> setState(() {
          wantsDinner = !wantsDinner;
        })),
      ],
    );
  }
}
