.class public Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;
.super Ljava/lang/Object;
.source "SimeDecContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "contactInfoItem"
.end annotation


# instance fields
.field public contactId:Ljava/lang/String;

.field public data:[Ljava/lang/String;

.field public dataCount:I

.field public dataType:[I

.field public mimeType:[Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/inputmethod/decoder/SimeDecContact;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/decoder/SimeDecContact;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x14

    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->this$0:Lcom/samsung/inputmethod/decoder/SimeDecContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->data:[Ljava/lang/String;

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->dataType:[I

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecContact$contactInfoItem;->mimeType:[Ljava/lang/String;

    return-void
.end method
