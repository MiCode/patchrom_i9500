.class Lcom/android/settings_ex/wfd/WfdPickerActivity$6;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity$6;->this$0:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 1688
    if-le p3, p2, :cond_1

    .line 1690
    const/16 v2, 0x5b

    new-array v0, v2, [C

    fill-array-data v0, :array_0

    .line 1695
    .local v0, acceptedChars:[C
    move v1, p2

    .local v1, index:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1696
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1697
    const-string v2, ""

    .line 1701
    .end local v0           #acceptedChars:[C
    .end local v1           #index:I
    :goto_1
    return-object v2

    .line 1695
    .restart local v0       #acceptedChars:[C
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1701
    .end local v0           #acceptedChars:[C
    .end local v1           #index:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1690
    nop

    :array_0
    .array-data 0x2
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x40t 0x0t
        0x2et 0x0t
        0x5ft 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x2dt 0x0t
        0x2bt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x21t 0x0t
        0x5ct 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x2ft 0x0t
        0x3ft 0x0t
        0x2ct 0x0t
        0x7et 0x0t
        0x60t 0x0t
        0x5et 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x3dt 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x22t 0x0t
    .end array-data
.end method
