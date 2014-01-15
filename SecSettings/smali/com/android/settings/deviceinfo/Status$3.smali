.class Lcom/android/settings_ex/deviceinfo/Status$3;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Status$3;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status$3;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #calls: Lcom/android/settings_ex/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Status;->access$600(Lcom/android/settings_ex/deviceinfo/Status;)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Status$3;->this$0:Lcom/android/settings_ex/deviceinfo/Status;

    #calls: Lcom/android/settings_ex/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/Status;->access$700(Lcom/android/settings_ex/deviceinfo/Status;)V

    .line 284
    return-void
.end method
