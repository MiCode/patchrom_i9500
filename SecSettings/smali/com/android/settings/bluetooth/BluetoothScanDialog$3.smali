.class Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$3;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothScanDialog$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 83
    return-void
.end method
