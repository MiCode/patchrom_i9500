.class Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 49
    return-void
.end method
