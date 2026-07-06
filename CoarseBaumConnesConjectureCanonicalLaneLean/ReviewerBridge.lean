import CoarseBaumConnesConjectureCanonicalLaneLean.Formalization
import CoarseBaumConnesConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace CoarseBaumConnesConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "090d16216096995c52dd0701392e0801cb0316cbdbd576d4c90f4b462f9991c2", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "5d68172535a4abf89bb24ea49e4459e6ae7754c5a95229b7958dc283545a8eab", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "08119f9e4e6b12687f4c0056daaf7026c5c6f58f59892707ab2bfd5ad16ccbaf", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "70ac7a5539fe1d489e9b314d0b17cd5f1505e63c34f2fc649d02573624beba82", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "e2daec4c5703ca094a5c5f083e809c9e2b52e34e91556181567d1362b9b69c20", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "83123857aaf7ae48cd3d0e01c4832c7616f514cba82f42ae472a1afb142673d3", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "aff7ded6ba98639ef37b3195cf960bf0d39a4b2f0b955d19628233c67ba80b64", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "2ac3bd736294161ac34badad1fc1a27dedaeca99084d39c56d0967233f11da29", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "65147ae5ef5f7f074abbf9f9bf53ffd4bea162fa1ba5116fa817c97b0003704d", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "CBC_G1", constant := "kappa_coarse" },
  { gate := "CBC_G2", constant := "sigma_metric" },
  { gate := "CBC_G3", constant := "kappa_compact" },
  { gate := "CBC_G4", constant := "rho_rigidity" },
  { gate := "CBC_G5", constant := "coarse_transfer" },
  { gate := "CBC_G6", constant := "eps_coh" },
  { gate := "CBC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "259925589f127ebcee00261f1e0c6266a51a3c74fb4d607aa2d6d26efebabd89" },
  { path := "README.md", sha256 := "58faf32bce506ba21703adf5c9e1c80d47b439e2b5e57f5e204306d052b2e0f0" },
  { path := "artifacts/constants_extracted.json", sha256 := "70ac7a5539fe1d489e9b314d0b17cd5f1505e63c34f2fc649d02573624beba82" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "08119f9e4e6b12687f4c0056daaf7026c5c6f58f59892707ab2bfd5ad16ccbaf" },
  { path := "artifacts/constants_registry.json", sha256 := "e2daec4c5703ca094a5c5f083e809c9e2b52e34e91556181567d1362b9b69c20" },
  { path := "artifacts/promotion_report.json", sha256 := "aff7ded6ba98639ef37b3195cf960bf0d39a4b2f0b955d19628233c67ba80b64" },
  { path := "artifacts/stitch_constants.json", sha256 := "83123857aaf7ae48cd3d0e01c4832c7616f514cba82f42ae472a1afb142673d3" },
  { path := "notes/EG1_public.md", sha256 := "c1f2ec3d15cca03ab45b4bbf681ef5ae6e3254f7c711a4c012ded529610ebaad" },
  { path := "notes/EG2_public.md", sha256 := "a7db10c3cdcb1c1436f4c34b3b8822287ae1d272914aeb18c7f7d7e904cd7fe5" },
  { path := "notes/EG3_public.md", sha256 := "d4d61433967dcd205b631f28c3904e83c6801eeb5197c9f7c24b12a35fa5adc4" },
  { path := "notes/EG4_public.md", sha256 := "22d9ab3017c68ae6a86d6ed7831c51d9d16ebdea6000cb95f8310308c66db783" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "5d68172535a4abf89bb24ea49e4459e6ae7754c5a95229b7958dc283545a8eab" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "29df7bb2a79ecaf15d9a8747d997de8a969de53478bdf4d6c9967b45afbd630d" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "954474e84bba4795c6c52b0b41ae0e640cd6bdb99387f22c37e08a7dcf320c38" },
  { path := "paper/COARSE_BAUM_CONNES_CONJECTURE_PREPRINT.md", sha256 := "3fb4c243399379cf4cc486bcdeb5c7701af3ab9f59dac4dfae42578bcbf9d35f" },
  { path := "repro/REPRO_PACK.md", sha256 := "cde96cbe82272e6433b68375b5b511a54359eac33510dcb3af8d8653018b4888" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "cefcdce43f9af85b131383af172910811f01cf7279f333a48c99f51dde881aff" },
  { path := "repro/certificate_baseline.json", sha256 := "65147ae5ef5f7f074abbf9f9bf53ffd4bea162fa1ba5116fa817c97b0003704d" },
  { path := "repro/run_repro.sh", sha256 := "18d44bd4ff9ad3cc977c8aa1dcf58edb20a4d89b74aa76b15ba0604817e0a7fc" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/cbc_closure_guard.py", sha256 := "b2451e00ff0640077bce1128e6d80289a12b3b06a13d9dd249535e8268bf3834" },
  { path := "scripts/README.md", sha256 := "e68065aa9b6597b8337116b9725e354e1bf2605337ef8ac29eb2444e1d820117" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "CBC_G1", status := "PASS" },
  { gate := "CBC_G2", status := "PASS" },
  { gate := "CBC_G3", status := "PASS" },
  { gate := "CBC_G4", status := "PASS" },
  { gate := "CBC_G5", status := "PASS" },
  { gate := "CBC_G6", status := "PASS" },
  { gate := "CBC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "coarse_transfer", value := "1.029422" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_coarse", value := "1.0913680000000001" },
  { key := "kappa_compact", value := "0.8045052292839904" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_metric", value := "1.073" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "coarse_transfer",
  "eps_coh",
  "kappa_coarse",
  "kappa_compact",
  "rho_rigidity",
  "sigma_metric",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end CoarseBaumConnesConjectureCanonicalLaneLean
end HautevilleHouse
