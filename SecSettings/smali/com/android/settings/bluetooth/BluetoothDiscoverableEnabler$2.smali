.class Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 104
    return-void
.end method
