.class Lcom/sec/android/glview/TwGLButton$2;
.super Ljava/lang/Object;
.source "TwGLButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLButton;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/glview/TwGLButton$2;->this$0:Lcom/sec/android/glview/TwGLButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/glview/TwGLButton$2;->this$0:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    #calls: Lcom/sec/android/glview/TwGLButton;->setDrawHighlight(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/glview/TwGLButton;->access$000(Lcom/sec/android/glview/TwGLButton;Z)V

    .line 118
    return-void
.end method
