.class Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$4;
.super Ljava/lang/Object;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createSapDialogView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 322
    if-eqz p2, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$402(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$402(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z

    goto :goto_0
.end method
