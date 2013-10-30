.class Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
.super Ljava/lang/Object;
.source "SimeDecoderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IMEXT9Info"
.end annotation


# instance fields
.field InputMode:I

.field Language:Ljava/lang/String;

.field isPhonePad:Z

.field final synthetic this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
