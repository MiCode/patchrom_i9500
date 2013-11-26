.class public Lcom/quramsoft/qrb/QuramBitmapFactory$Options$InputType;
.super Ljava/lang/Object;
.source "QuramBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quramsoft/qrb/QuramBitmapFactory$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputType"
.end annotation


# static fields
.field public static final Quram_IO_BUFFER:I = 0x1

.field public static final Quram_IO_FILE:I


# instance fields
.field final synthetic this$1:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;


# direct methods
.method public constructor <init>(Lcom/quramsoft/qrb/QuramBitmapFactory$Options;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/quramsoft/qrb/QuramBitmapFactory$Options$InputType;->this$1:Lcom/quramsoft/qrb/QuramBitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
