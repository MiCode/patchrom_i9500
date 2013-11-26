.class public Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;
.super Ljava/lang/Object;
.source "TwGLProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/glview/TwGLProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NameIndexerObj"
.end annotation


# instance fields
.field public mHandle:I

.field public mQualifier:I

.field public mType:I

.field final synthetic this$0:Lcom/sec/android/glview/TwGLProgram;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLProgram;)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->this$0:Lcom/sec/android/glview/TwGLProgram;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/16 v0, 0x66

    iput v0, p0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mQualifier:I

    .line 86
    const/16 v0, 0xcf

    iput v0, p0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mType:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;->mHandle:I

    return-void
.end method
