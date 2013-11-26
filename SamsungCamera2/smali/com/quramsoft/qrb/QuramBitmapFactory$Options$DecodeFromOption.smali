.class public Lcom/quramsoft/qrb/QuramBitmapFactory$Options$DecodeFromOption;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecodeFromOption"
.end annotation


# static fields
.field public static final Quram_AUTOTHUMBNAIL:I = 0x0

.field public static final Quram_ROTATETHUMBNAIL:I = 0x3

.field public static final Quram_USEORGIMG:I = 0x1

.field public static final Quram_USETHUMBNAIL:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;


# direct methods
.method public constructor <init>(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options$DecodeFromOption;->this$1:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
