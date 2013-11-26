.class Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;
.super Ljava/lang/Object;
.source "TwGLEditableShortcutMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->hideHelpText()V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->mIsHelpTextHidedByTimeOut:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;Z)Z

    .line 117
    return-void
.end method
