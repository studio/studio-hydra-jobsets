{ nixpkgs, declInput ? null}:
let pkgs = import nixpkgs {}; in
{
  jobsets = pkgs.runCommand "spec.json" {} ''
    cat > $out <<EOF
    {
      "build" 
    }
    EOF
  '';
}
