.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$1;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"

# interfaces
.implements Lcom/nuance/connect/language/KLConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$1;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "SimeXt9DLManager"

    const-string v1, "KLConnectionCallback.connected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public disconnected()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "SimeXt9DLManager"

    const-string v1, "KLConnectionCallback.disconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method
