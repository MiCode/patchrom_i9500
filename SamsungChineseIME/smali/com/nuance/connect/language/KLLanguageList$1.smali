.class final Lcom/nuance/connect/language/KLLanguageList$1;
.super Ljava/util/HashMap;
.source "KLLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/language/KLLanguageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[I>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 18
    const-string v0, "Afrikaans"

    new-array v1, v4, [I

    const/16 v2, 0x136

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "Albanian"

    new-array v1, v4, [I

    const/16 v2, 0x11c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "Amharic"

    new-array v1, v4, [I

    const/16 v2, 0x144

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v0, "Arabic"

    new-array v1, v4, [I

    const/16 v2, 0x101

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "Armenian"

    new-array v1, v4, [I

    const/16 v2, 0x15a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "Assamese"

    new-array v1, v4, [I

    const/16 v2, 0x145

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "Azerbaijani"

    new-array v1, v4, [I

    const/16 v2, 0x147

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "Basque"

    new-array v1, v4, [I

    const/16 v2, 0x12d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "Belarusian"

    new-array v1, v4, [I

    const/16 v2, 0x123

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "Bengali"

    new-array v1, v4, [I

    const/16 v2, 0x14b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "Bosnian"

    new-array v1, v4, [I

    const/16 v2, 0x197

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "Bulgarian"

    new-array v1, v4, [I

    const/16 v2, 0x102

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "Catalan"

    new-array v1, v4, [I

    const/16 v2, 0x103

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "Chinese_CN"

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "Chinese_HK"

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "Chinese_TW"

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "Croatian"

    new-array v1, v5, [I

    fill-array-data v1, :array_3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "Czech"

    new-array v1, v5, [I

    fill-array-data v1, :array_4

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "Danish"

    new-array v1, v4, [I

    const/16 v2, 0x106

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "Dutch_BE"

    new-array v1, v4, [I

    const/16 v2, 0x813

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "Dutch"

    new-array v1, v4, [I

    const/16 v2, 0x113

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "English"

    new-array v1, v4, [I

    const/16 v2, 0x109

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "English_UK"

    new-array v1, v4, [I

    const/16 v2, 0x809

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "Estonian"

    new-array v1, v4, [I

    const/16 v2, 0x125

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "Farsi"

    new-array v1, v4, [I

    const/16 v2, 0x129

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "Finnish"

    new-array v1, v4, [I

    const/16 v2, 0x10b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "French"

    new-array v1, v4, [I

    const/16 v2, 0x10c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "French_CA"

    new-array v1, v4, [I

    const/16 v2, 0xc0c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "French_CH"

    new-array v1, v4, [I

    const/16 v2, 0x100c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "Galician"

    new-array v1, v4, [I

    const/16 v2, 0x155

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "Georgian"

    new-array v1, v4, [I

    const/16 v2, 0x160

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "German"

    new-array v1, v4, [I

    const/16 v2, 0x107

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "Greek"

    new-array v1, v4, [I

    const/16 v2, 0x108

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "Gujarati"

    new-array v1, v4, [I

    const/16 v2, 0x157

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "Hausa"

    new-array v1, v4, [I

    const/16 v2, 0x158

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Hebrew"

    new-array v1, v4, [I

    const/16 v2, 0x10d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Hindi"

    new-array v1, v4, [I

    const/16 v2, 0x139

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "Hinglish"

    new-array v1, v4, [I

    const/16 v2, 0x1d0

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "Hungarian"

    new-array v1, v4, [I

    const/16 v2, 0x10e

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "Icelandic"

    new-array v1, v4, [I

    const/16 v2, 0x10f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "Igbo"

    new-array v1, v4, [I

    const/16 v2, 0x195

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "Indonesian"

    new-array v1, v4, [I

    const/16 v2, 0x121

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "Irish"

    new-array v1, v4, [I

    const/16 v2, 0x154

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "Italian"

    new-array v1, v4, [I

    const/16 v2, 0x110

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "Italian_CH"

    new-array v1, v4, [I

    const/16 v2, 0x810

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "Japanese"

    new-array v1, v4, [I

    const/16 v2, 0x111

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "Javanese"

    new-array v1, v4, [I

    const/16 v2, 0x15f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "Kannada"

    new-array v1, v4, [I

    const/16 v2, 0x163

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "Kazakh"

    new-array v1, v4, [I

    const/16 v2, 0x161

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "Khmer"

    new-array v1, v4, [I

    const/16 v2, 0x12c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "Kirghiz"

    new-array v1, v4, [I

    const/16 v2, 0x166

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "Korean"

    new-array v1, v5, [I

    fill-array-data v1, :array_5

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "Latvian"

    new-array v1, v4, [I

    const/16 v2, 0x126

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "Lingala"

    new-array v1, v4, [I

    const/16 v2, 0x168

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "Lithuanian"

    new-array v1, v4, [I

    const/16 v2, 0x127

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "Macedonian"

    new-array v1, v4, [I

    const/16 v2, 0x12f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "Malagasy"

    new-array v1, v4, [I

    const/16 v2, 0x169

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "Malay"

    new-array v1, v4, [I

    const/16 v2, 0x13e

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "Malayalam"

    new-array v1, v4, [I

    const/16 v2, 0x16a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "Marathi"

    new-array v1, v4, [I

    const/16 v2, 0x16d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "Mongolian"

    new-array v1, v4, [I

    const/16 v2, 0x16b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "Norwegian"

    new-array v1, v4, [I

    const/16 v2, 0x114

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "Oriya"

    new-array v1, v4, [I

    const/16 v2, 0x173

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "Pashto"

    new-array v1, v4, [I

    const/16 v2, 0x175

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "Polish"

    new-array v1, v4, [I

    const/16 v2, 0x115

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "Portuguese"

    new-array v1, v4, [I

    const/16 v2, 0x116

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "Portuguese_PT"

    new-array v1, v4, [I

    const/16 v2, 0x816

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "Punjabi"

    new-array v1, v4, [I

    const/16 v2, 0x174

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "Romanian"

    new-array v1, v4, [I

    const/16 v2, 0x118

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "Russian"

    new-array v1, v4, [I

    const/16 v2, 0x119

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "Serbian"

    new-array v1, v4, [I

    const/16 v2, 0x180

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "Sesotho"

    new-array v1, v4, [I

    const/16 v2, 0x182

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "Sinhala"

    new-array v1, v4, [I

    const/16 v2, 0x17c

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "Slovak"

    new-array v1, v4, [I

    const/16 v2, 0x11b

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "Slovenian"

    new-array v1, v4, [I

    const/16 v2, 0x124

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "Spanish"

    new-array v1, v4, [I

    const/16 v2, 0x10a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "Sundanese"

    new-array v1, v4, [I

    const/16 v2, 0x199

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "Swahili"

    new-array v1, v4, [I

    const/16 v2, 0x141

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "Swedish"

    new-array v1, v4, [I

    const/16 v2, 0x11d

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "Tagalog"

    new-array v1, v4, [I

    const/16 v2, 0x189

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "Tajik"

    new-array v1, v4, [I

    const/16 v2, 0x186

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "Tamil"

    new-array v1, v4, [I

    const/16 v2, 0x184

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "Telugu"

    new-array v1, v4, [I

    const/16 v2, 0x185

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "Thai"

    new-array v1, v4, [I

    const/16 v2, 0x11e

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "Turkish"

    new-array v1, v4, [I

    const/16 v2, 0x11f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "Turkmen"

    new-array v1, v4, [I

    const/16 v2, 0x188

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "Ukrainian"

    new-array v1, v4, [I

    const/16 v2, 0x122

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "Urdu"

    new-array v1, v4, [I

    const/16 v2, 0x120

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "Uzbek"

    new-array v1, v4, [I

    const/16 v2, 0x18f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "UzbekLatin"

    new-array v1, v4, [I

    const/16 v2, 0x1c2

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "Vietnamese"

    new-array v1, v4, [I

    const/16 v2, 0x12a

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "Welsh"

    new-array v1, v4, [I

    const/16 v2, 0x14f

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "Xhosa"

    new-array v1, v4, [I

    const/16 v2, 0x134

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "Yoruba"

    new-array v1, v4, [I

    const/16 v2, 0x193

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "Zulu"

    new-array v1, v4, [I

    const/16 v2, 0x135

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "HotWords_CN"

    new-array v1, v4, [I

    const/16 v2, 0x10e1

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "HotWords_TW"

    new-array v1, v4, [I

    const/16 v2, 0x10e0

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "HotWords_HK"

    new-array v1, v4, [I

    const/16 v2, 0x10e2

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/nuance/connect/language/KLLanguageList$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0xe1t 0x5t 0x0t 0x0t
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0xe2t 0x0t 0x0t 0x0t
        0xe2t 0x0t 0x0t 0x0t
        0xe2t 0x6t 0x0t 0x0t
        0xe2t 0x5t 0x0t 0x0t
    .end array-data

    .line 33
    :array_2
    .array-data 0x4
        0xe0t 0x0t 0x0t 0x0t
        0xe0t 0x5t 0x0t 0x0t
        0xe0t 0x6t 0x0t 0x0t
    .end array-data

    .line 34
    :array_3
    .array-data 0x4
        0x59t 0x1t 0x0t 0x0t
        0x59t 0x1t 0x0t 0x0t
    .end array-data

    .line 35
    :array_4
    .array-data 0x4
        0x5t 0x1t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
    .end array-data

    .line 69
    :array_5
    .array-data 0x4
        0x12t 0x1t 0x0t 0x0t
        0x12t 0x7t 0x0t 0x0t
    .end array-data
.end method
