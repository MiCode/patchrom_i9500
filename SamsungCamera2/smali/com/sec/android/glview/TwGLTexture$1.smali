.class Lcom/sec/android/glview/TwGLTexture$1;
.super Ljava/lang/Object;
.source "TwGLTexture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLTexture;->onLoad()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLTexture;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLTexture;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x47012f00

    const v5, 0x46180400

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0xde1

    .line 280
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    #setter for: Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    invoke-static {v0, v3}, Lcom/sec/android/glview/TwGLTexture;->access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z

    .line 281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->initSize()V

    .line 282
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->setVertices()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->initBuffers()V

    .line 287
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    new-array v1, v3, [I

    iput-object v1, v0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v0, v0, Lcom/sec/android/glview/TwGLTexture;->mTextures:[I

    aget v0, v0, v4

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 293
    const/16 v0, 0x2801

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 294
    const/16 v0, 0x2800

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 296
    const/16 v0, 0x2802

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 297
    const/16 v0, 0x2803

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLProgram;->getProgramID()I

    move-result v1

    iput v1, v0, Lcom/sec/android/glview/TwGLTexture;->mProgramID:I

    .line 301
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v1

    const-string v2, "a_position"

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/glview/TwGLTexture;->mObjPosition:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    .line 302
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v1

    const-string v2, "a_texcoord"

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/glview/TwGLTexture;->mObjTextureCoord:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    .line 303
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v1

    const-string v2, "u_MVPMatrix"

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/glview/TwGLTexture;->mObjMVPMatrix:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    .line 304
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getGLBaseProgram()Lcom/sec/android/glview/TwGLProgram;

    move-result-object v1

    const-string v2, "u_alpha"

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLProgram;->getNameIndexer(Ljava/lang/String;)Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/glview/TwGLTexture;->mObjAlpha:Lcom/sec/android/glview/TwGLProgram$NameIndexerObj;

    .line 306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->loadGLTexture()V

    .line 308
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    iput-boolean v3, v0, Lcom/sec/android/glview/TwGLTexture;->mTextureLoaded:Z

    .line 309
    iget-object v0, p0, Lcom/sec/android/glview/TwGLTexture$1;->this$0:Lcom/sec/android/glview/TwGLTexture;

    #setter for: Lcom/sec/android/glview/TwGLTexture;->mAsyncLodingInProgress:Z
    invoke-static {v0, v4}, Lcom/sec/android/glview/TwGLTexture;->access$002(Lcom/sec/android/glview/TwGLTexture;Z)Z

    goto/16 :goto_0
.end method
