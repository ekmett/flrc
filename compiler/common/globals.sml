(* The Intel P to C/Pillar Compiler *)
(* Copyright (C) Intel Corporation, October 2006 *)

signature GLOBALS = 
sig

  val cspToScheme                  : Config.t -> bool
  val disableOptimizedRationals    : Config.t -> bool
  val disableOptimizedIntegers     : Config.t -> bool

  val features : Config.Feature.feature list
  val debugs   : Config.Debug.debug list
  val controls : Config.Control.control list

end;

structure Globals :> GLOBALS = 
struct

  val (cspToSchemeF, cspToScheme) =
      Config.Feature.mk ("PPiler:csp-to-scheme", "use Scheme path for Core SP compilation")

  val (disableOptimizedRationalsF, disableOptimizedRationals) =
      Config.Feature.mk ("PPiler:disable-optimized-rationals",
                         "disable optimized rational rep")

  val (disableOptimizedIntegersF, disableOptimizedIntegers) =
      Config.Feature.mk ("PPiler:disable-optimized-integers",
                         "disable optimized integer rep")

  val features = [cspToSchemeF, disableOptimizedRationalsF, disableOptimizedIntegersF]
  val debugs = []
  val controls = []

end;
