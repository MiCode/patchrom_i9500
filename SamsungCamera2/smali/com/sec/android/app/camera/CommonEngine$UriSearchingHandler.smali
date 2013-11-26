.class public Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;
.super Landroid/os/Handler;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UriSearchingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CommonEngine;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/CommonEngine;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 351
    :goto_0
    return-void

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->searchLastImageContentUri()V

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CommonEngine$UriSearchingHandler;->this$0:Lcom/sec/android/app/camera/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->searchLastVideoContentUri()V

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
