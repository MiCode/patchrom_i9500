.class Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;Z)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;->this$0:Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

    iput-boolean p2, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 383
    invoke-static {}, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider;->access$600()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings_ex/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 384
    const/4 v0, 0x0

    return-object v0
.end method
