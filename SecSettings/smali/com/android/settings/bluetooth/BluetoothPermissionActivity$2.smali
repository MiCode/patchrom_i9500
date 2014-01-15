.class Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$2;
.super Ljava/lang/Object;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;
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
    .line 284
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 286
    if-eqz p2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$202(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->access$202(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z

    goto :goto_0
.end method
