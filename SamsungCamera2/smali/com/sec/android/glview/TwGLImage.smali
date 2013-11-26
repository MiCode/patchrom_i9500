.class public Lcom/sec/android/glview/TwGLImage;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLImage.java"


# instance fields
.field private mDimmed:Z

.field protected mImage:Lcom/sec/android/glview/TwGLTexture;

.field private mPressed:Z

.field protected mResourceOffsetX:F

.field protected mResourceOffsetY:F


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 219
    if-eqz p6, :cond_0

    .line 220
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 225
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 160
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 162
    if-eqz p6, :cond_0

    .line 163
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 168
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "stretch"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 101
    if-eqz p7, :cond_0

    .line 102
    if-eqz p6, :cond_2

    .line 103
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 111
    :cond_1
    return-void

    .line 105
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v2, v2, p7}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 274
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 276
    if-eqz p6, :cond_0

    .line 277
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    move-object v1, p1

    move v3, v2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 282
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFI)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "z"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 79
    if-eqz p5, :cond_0

    .line 80
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p5}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 84
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imageId"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 60
    if-eqz p4, :cond_0

    .line 61
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 65
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 198
    if-eqz p4, :cond_0

    .line 199
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 204
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 141
    if-eqz p4, :cond_0

    .line 142
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 147
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 2
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 255
    if-eqz p4, :cond_0

    .line 256
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p4}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 261
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "glContext"
    .parameter "bitmap"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 179
    if-eqz p2, :cond_0

    .line 180
    new-instance v0, Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 185
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 2
    .parameter "glContext"
    .parameter "imagePath"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 122
    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLFileTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 128
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;[B)V
    .locals 2
    .parameter "glContext"
    .parameter "image"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 234
    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 38
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mPressed:Z

    .line 41
    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLImage;->mDimmed:Z

    .line 44
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 47
    iput v1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 236
    if-eqz p2, :cond_0

    .line 237
    new-instance v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/sec/android/glview/TwGLByteArrayTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF[B)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 242
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 309
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 310
    return-void
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->getLoaded()Z

    move-result v0

    return v0
.end method

.method public initSize()V
    .locals 3

    .prologue
    .line 387
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 389
    .local v0, height:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 393
    :cond_0
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 394
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 397
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 398
    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 357
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onAlphaUpdated()V

    .line 360
    :cond_0
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 348
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 349
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->onLayoutUpdated()V

    .line 352
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->load()Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->reset()V

    .line 431
    :cond_0
    return-void
.end method

.method public setFlip(Z)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLTexture;->setFlip(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .parameter "height"

    .prologue
    .line 420
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setHeight(F)V

    .line 425
    :cond_0
    return-void
.end method

.method public setImageResources(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 437
    :cond_0
    if-eqz p1, :cond_1

    .line 438
    new-instance v0, Lcom/sec/android/glview/TwGLResourceTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLResourceTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    .line 439
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 441
    :cond_1
    return-void
.end method

.method public setResourceOffset(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 363
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    .line 364
    .local v1, imageWidth:F
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    .line 366
    .local v0, imageHeight:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v2, v1

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v2, v0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 367
    :cond_0
    const/4 v2, 0x0

    .line 377
    :goto_0
    return v2

    .line 370
    :cond_1
    iput p1, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    .line 371
    iput p2, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_3

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    iget v3, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetX:F

    iget v4, p0, Lcom/sec/android/glview/TwGLImage;->mResourceOffsetY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 377
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSampleSize(I)V
    .locals 1
    .parameter "sampleSize"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLByteArrayTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLByteArrayTexture;->setSampleSize(I)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLFileTexture;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    check-cast v0, Lcom/sec/android/glview/TwGLFileTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLFileTexture;->setSampleSize(I)V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    .line 407
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/sec/android/glview/TwGLImage;->mImage:Lcom/sec/android/glview/TwGLTexture;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 416
    :cond_0
    return-void
.end method
