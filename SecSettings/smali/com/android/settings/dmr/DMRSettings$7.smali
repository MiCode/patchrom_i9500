.class Lcom/android/settings_ex/dmr/DMRSettings$7;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dmr/DMRSettings;)V
    .locals 0

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/settings_ex/dmr/DMRSettings$7;->this$0:Lcom/android/settings_ex/dmr/DMRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1738
    const-string v0, "Settings"

    const-string v1, "Cancel Clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    return-void
.end method
