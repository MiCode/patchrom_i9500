.class final Lcom/samsung/inputmethod/handwriting/BeautifyManager$1;
.super Ljava/lang/Object;
.source "BeautifyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/handwriting/BeautifyManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/BeautifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    #calls: Lcom/samsung/inputmethod/handwriting/BeautifyManager;->initEngine()V
    invoke-static {}, Lcom/samsung/inputmethod/handwriting/BeautifyManager;->access$000()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method
