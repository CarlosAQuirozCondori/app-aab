import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'form_reports_model.dart';
export 'form_reports_model.dart';

class FormReportsWidget extends StatefulWidget {
  const FormReportsWidget({Key? key}) : super(key: key);

  @override
  _FormReportsWidgetState createState() => _FormReportsWidgetState();
}

class _FormReportsWidgetState extends State<FormReportsWidget> {
  late FormReportsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FormReportsModel());

    _model.nombreSoli1Controller ??= TextEditingController();
    _model.nombreSoli1FocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Atenciones y Soporte',
            style: FlutterFlowTheme.of(context).titleLarge,
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rellenar los Campos',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: Text(
                      'Atenciones y Soporte a Equipos de Computo y Periféricos de las distintas áreas de la Municipalidad Distrital de Majes',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                fontSize: 15.0,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: _model.nombreSoli1Controller,
                          focusNode: _model.nombreSoli1FocusNode,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Nombres del Solicitante',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 12.0),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.nombreSoli1ControllerValidator
                              .asValidator(context),
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.area2ValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'Alcaldia',
                            'Consejo Municipal',
                            'Procuraduria',
                            'OCI(Contraloria)',
                            'Gerencia Municipal',
                            'Control Institucional (Gerencia Municipal)',
                            'Sub Gerencia de Asesoria Juridica',
                            'Sub Gerencia de Planificacion y Presupuesto',
                            'Unidad de Presupuesto',
                            'Unidad de planificacion y Racionalizacion',
                            'Unidad de Programas e Inversiones',
                            'Oficina de Secretaria General',
                            'Unidad de Tramite Documentario y Archivo',
                            'Unidad de Imagen Institucional y Relaciones Publicas',
                            'Unidad de Registro Civil ',
                            'Sub Gerencia de Administracion y finanzas ',
                            'Unidad de Contabilidad ',
                            'Unidad de Tesoreria',
                            'Unidad de Logistica y Servicios Generales',
                            'Unidad de Control Patrimonial',
                            'Unidad de Sistemas e Informaticas ',
                            'Unidad de Recursos Humanos',
                            'Secretaria Tecnica',
                            'Unidad de Ejecucion Coactiva',
                            'Sub gerencia de Desarrollo Urbano y Rural',
                            'DPTO. De Obras Publicas y Supervicion',
                            'DPTO. De Obras Privadas y Defensa Civil ',
                            'DPTO. De Formulación de Estudios y Proyectos ',
                            'DPTO. De Mantenimiento de Infraestructura Publica',
                            'DPTO. De Habilitaciones Urbanas y Catastro',
                            'Sub Gerencia  de Gestion Social y Economia',
                            'DPTO. De Educacion, Cultura, Deporte, Recreacion y Salud',
                            'DPTO. De Inclusion Social y Programas Sociales  ',
                            'DPTO. De Inclusion Social y Programas Sociales  - SISFOH',
                            'DPTO. De Inclusion Social y Programas Sociales  - PVL',
                            'DPTO. De Inclusión Social y Programas Sociales  - CPVC',
                            'DPTO. De Servicio Social y Defensoria Municipal CIAM',
                            'DPTO. De Servicio Social y Defensoria DEMUNA',
                            'DPTO. De Servicio Social y Defensoria OMAPED',
                            'DPTO. De Desarrollo Economico',
                            'Sub Gerencia de Servicios Comunales',
                            'DPTO. De Gestion Ambiental y Salubridad',
                            'DPTO. De Seguridad Ciudadana',
                            'DPTO. De Control Urbano y Transcito',
                            'Sub Gerencia  de Administacion Tributaria',
                            'DPTO. De Control, Recaudacion y Autorizaciones Comerciales',
                            'DPTO. De Comercializacion y Policia Municipal',
                            'DPTO. Fiscalizacion ',
                            'Sub Gerencia De Administracion de la Propiedad Inmueble',
                            'DPTO. De Saneamiento Fisico Legal',
                            'Mesa de Partes ',
                            'Otro'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.area2Value = val),
                          width: 364.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).labelLarge,
                          hintText: 'Área Solicitante',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              23.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.cargo3ValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'SubGerente',
                            'Jefe',
                            'Administrativo',
                            'Asistente',
                            'Auxiliar',
                            'Residente',
                            'Supervisor',
                            'Especialista',
                            'Otro'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.cargo3Value = val),
                          width: 364.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).labelLarge,
                          hintText: 'Cargo',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              23.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Fecha',
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                        ),
                        FlutterFlowCalendar(
                          color: FlutterFlowTheme.of(context).primary,
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          weekFormat: false,
                          weekStartsMonday: false,
                          rowHeight: 30.0,
                          onChange: (DateTimeRange? newSelectedDate) {
                            setState(() =>
                                _model.calendar4SelectedDay = newSelectedDate);
                          },
                          titleStyle:
                              FlutterFlowTheme.of(context).headlineSmall,
                          dayOfWeekStyle:
                              FlutterFlowTheme.of(context).labelLarge,
                          dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                          selectedDateStyle:
                              FlutterFlowTheme.of(context).titleSmall,
                          inactiveDateStyle:
                              FlutterFlowTheme.of(context).labelMedium,
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.ubicacion5ValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'MDM - Palacio',
                            'MDM - Alameda',
                            'MDM - Estadio',
                            'MDM - C. de la Cultura',
                            'MDM - Expo Majes',
                            'MDM - Dinosaurios',
                            'MDM - Piscina',
                            'MDM - Mercado',
                            'MDM - Area Central Demuna'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.ubicacion5Value = val),
                          width: 364.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).labelLarge,
                          hintText: 'Ubicación',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              23.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.asistencia6ValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'Teofilo Calliri',
                            'Pablo Alvarez',
                            'Mario Rojas',
                            'Armando Mamani'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.asistencia6Value = val),
                          width: 364.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).labelLarge,
                          hintText: 'Asistencia Técnica',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              23.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.revision7ValueController ??=
                              FormFieldController<String>(null),
                          options: [
                            'CPU',
                            'Monitor',
                            'Impresora',
                            'Red',
                            'Estabilizador',
                            'SIAM',
                            'SIAF',
                            'SIGA',
                            'Teclado / Mouse',
                            'Fotocopiadora',
                            'Edicion ',
                            'Asistencia Remota',
                            'Office',
                            'Antivirus',
                            'Sistema Operativo',
                            'Otros'
                          ],
                          onChanged: (val) =>
                              setState(() => _model.revision7Value = val),
                          width: 364.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).labelLarge,
                          hintText: 'Revisión / Mantenimiento / Asistencia',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              23.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.estado8ValueController ??=
                              FormFieldController<String>(null),
                          options: ['Atendido', 'No Atendido'],
                          onChanged: (val) =>
                              setState(() => _model.estado8Value = val),
                          width: 364.0,
                          height: 50.0,
                          textStyle: FlutterFlowTheme.of(context).labelLarge,
                          hintText: 'Estado',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: Color(0xFFE0E3E7),
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              23.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 250.0, 0.0),
                          child: Text(
                            'Subir Imagen',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).labelLarge,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                setState(() => _model.isDataUploading = true);
                                var selectedUploadedFiles = <FFUploadedFile>[];

                                var downloadUrls = <String>[];
                                try {
                                  selectedUploadedFiles = selectedMedia
                                      .map((m) => FFUploadedFile(
                                            name: m.storagePath.split('/').last,
                                            bytes: m.bytes,
                                            height: m.dimensions?.height,
                                            width: m.dimensions?.width,
                                            blurHash: m.blurHash,
                                          ))
                                      .toList();

                                  downloadUrls = (await Future.wait(
                                    selectedMedia.map(
                                      (m) async => await uploadData(
                                          m.storagePath, m.bytes),
                                    ),
                                  ))
                                      .where((u) => u != null)
                                      .map((u) => u!)
                                      .toList();
                                } finally {
                                  _model.isDataUploading = false;
                                }
                                if (selectedUploadedFiles.length ==
                                        selectedMedia.length &&
                                    downloadUrls.length ==
                                        selectedMedia.length) {
                                  setState(() {
                                    _model.uploadedLocalFile =
                                        selectedUploadedFiles.first;
                                    _model.uploadedFileUrl = downloadUrls.first;
                                  });
                                } else {
                                  setState(() {});
                                  return;
                                }
                              }

                              setState(() {
                                FFAppState().miimagentemporal =
                                    _model.uploadedFileUrl;
                              });
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.network(
                                      valueOrDefault<String>(
                                        FFAppState().miimagentemporal,
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSysLhOHIK3nrS3Mbwwlqt1EWyAHG5ljT3g7A&usqp=CAU',
                                      ),
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: valueOrDefault<String>(
                                      FFAppState().miimagentemporal,
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSysLhOHIK3nrS3Mbwwlqt1EWyAHG5ljT3g7A&usqp=CAU',
                                    ),
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: valueOrDefault<String>(
                                FFAppState().miimagentemporal,
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSysLhOHIK3nrS3Mbwwlqt1EWyAHG5ljT3g7A&usqp=CAU',
                              ),
                              transitionOnUserGestures: true,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    FFAppState().miimagentemporal,
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSysLhOHIK3nrS3Mbwwlqt1EWyAHG5ljT3g7A&usqp=CAU',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 12.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var formulariosRecordReference =
                                  FormulariosRecord.collection.doc();
                              await formulariosRecordReference
                                  .set(createFormulariosRecordData(
                                nombre: _model.nombreSoli1Controller.text,
                                areaSolicitante: _model.area2Value,
                                cargo: _model.cargo3Value,
                                fecha: _model.calendar4SelectedDay?.start,
                                ubicacion: _model.ubicacion5Value,
                                asistenciaTecnica: _model.asistencia6Value,
                                revision: _model.revision7Value,
                                estado: _model.estado8Value,
                                imagen: FFAppState().miimagentemporal,
                              ));
                              _model.apiResult93w =
                                  FormulariosRecord.getDocumentFromData(
                                      createFormulariosRecordData(
                                        nombre:
                                            _model.nombreSoli1Controller.text,
                                        areaSolicitante: _model.area2Value,
                                        cargo: _model.cargo3Value,
                                        fecha:
                                            _model.calendar4SelectedDay?.start,
                                        ubicacion: _model.ubicacion5Value,
                                        asistenciaTecnica:
                                            _model.asistencia6Value,
                                        revision: _model.revision7Value,
                                        estado: _model.estado8Value,
                                        imagen: FFAppState().miimagentemporal,
                                      ),
                                      formulariosRecordReference);
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Hecho'),
                                    content: Text('Su Reporte se ha cargado'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Aceptar'),
                                      ),
                                    ],
                                  );
                                },
                              );

                              setState(() {});
                            },
                            text: 'Enviar Resumen',
                            icon: Icon(
                              Icons.receipt_long,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 4.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
