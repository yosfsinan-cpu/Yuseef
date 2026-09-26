import SwiftUI

struct YuseefSinanSarokAppView: View {
    @State private var statusText = "يوسف سينان: ل چاڤەڕێیا ئینستالکرنا IPA... ڤێرژن هاتە ناسکرن!"
    @State private var installedVersion = "iOS 16 - 27 Supported"

    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("💻 يوسف سەروک - مۆبایلا فێلباز")
                    .font(.headline)
                    .foregroundColor(.yellow)
                
                Text(statusText)
                    .font(.system(size: 13, design: .monospaced))
                    .foregroundColor(.green)
                    .padding()
                
                // دوگمەیا نصبکرنێ ب ڕێکا TrollStore یان eSign
                Button(action: {
                    installIPAFile()
                }) {
                    Text("ئینستالکرنا IPA (TrollStore / eSign)")
                        .bold()
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Text("پشتیڤانیا ژ: iOS 16 تا iOS 27")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
        }
    }

    func installIPAFile() {
        // لێرە کارێ پرۆسێسکرنا IPA و ڤێرژنێن ئایفۆنێ دەست پێ دکەت
        statusText = "سەرکەفتن! ئەپ ب ڕێکا سەیری هاتە دابەزاندن."
    }
}

#Preview {
    YuseefSinanSarokAppView()
}
