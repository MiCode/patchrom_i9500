.class public Lcom/touchtype/personalizer/SMSParser;
.super Ljava/lang/Object;
.source "SMSParser.java"


# static fields
.field public static final NO_MESSAGES:I = -0x2

.field public static final PROGRESS_FAIL:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mParseSmsTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/touchtype_fluency/util/SwiftKeySession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/touchtype/personalizer/SMSParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 2
    .parameter "context"
    .parameter "session"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/touchtype/personalizer/SMSParser$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/SMSParser$1;-><init>(Lcom/touchtype/personalizer/SMSParser;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/SMSParser;->mParseSmsTask:Landroid/os/AsyncTask;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/personalizer/SMSParser;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser;->mParseSmsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    iput-object p2, p0, Lcom/touchtype/personalizer/SMSParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/touchtype/personalizer/SMSParser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/touchtype/personalizer/SMSParser;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/SMSParser;)Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser;->mSession:Lcom/touchtype_fluency/util/SwiftKeySession;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/touchtype/personalizer/SMSParser;->mParseSmsTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 109
    return-void
.end method

.method protected onComplete()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected onProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "total"

    .prologue
    .line 112
    return-void
.end method
