.class public Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;
.super Ljava/lang/Object;
.source "SimeDecManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungDecoderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 787
    const-string v0, "SimeDecManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecManager$SamsungDecoderServiceConnection;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-static {p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    move-result-object v1

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecManager;->notifyServiceConnected(Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->access$400(Lcom/samsung/inputmethod/decoder/SimeDecManager;Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;)V

    .line 789
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 792
    const-string v0, "SimeDecManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    return-void
.end method
