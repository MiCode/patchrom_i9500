.class Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager$1;
.super Ljava/lang/Object;
.source "SimeKLManager.java"

# interfaces
.implements Lcom/nuance/connect/language/KLConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/SimeKLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "SimeKLManager"

    const-string v1, "KLConnectionCallback.connected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public disconnected()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "SimeKLManager"

    const-string v1, "KLConnectionCallback.disconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method
