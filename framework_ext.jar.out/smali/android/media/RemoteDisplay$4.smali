.class Landroid/media/RemoteDisplay$4;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->cbFromNativeWFD(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$ext_data:Ljava/lang/Object;

.field final synthetic val$length:I

.field final synthetic val$msg:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Landroid/media/RemoteDisplay$4;->this$0:Landroid/media/RemoteDisplay;

    iput p2, p0, Landroid/media/RemoteDisplay$4;->val$msg:I

    iput p3, p0, Landroid/media/RemoteDisplay$4;->val$length:I

    iput-object p4, p0, Landroid/media/RemoteDisplay$4;->val$ext_data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Landroid/media/RemoteDisplay;->access$100()Landroid/media/RemoteDisplayCallback;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteDisplay$4;->val$msg:I

    iget v2, p0, Landroid/media/RemoteDisplay$4;->val$length:I

    iget-object v3, p0, Landroid/media/RemoteDisplay$4;->val$ext_data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteDisplayCallback;->onNoti(IILjava/lang/Object;)V

    .line 170
    return-void
.end method
