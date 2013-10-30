.class Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;
.super Ljava/lang/Object;
.source "PersonalizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunContactsParser"
.end annotation


# instance fields
.field private mServiceId:I

.field private mServiceName:Ljava/lang/String;

.field private mTotal:I

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "fromInstaller"
    .parameter "serviceName"
    .parameter "serviceId"

    .prologue
    .line 535
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;

    .line 538
    iput p4, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I

    .line 539
    return-void
.end method

.method static synthetic access$2300(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 528
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I

    return v0
.end method

.method static synthetic access$2302(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 528
    iput p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I

    return p1
.end method

.method static synthetic access$2500(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 528
    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 543
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to build an ContactsParser object..."

    invoke-static {v2, v3}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v1

    .line 548
    .local v1, mSwiftKeySession:Lcom/touchtype_fluency/util/SwiftKeySession;
    invoke-static {}, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    .line 551
    .local v0, lpm:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 559
    new-instance v2, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v3}, Lcom/touchtype/personalizer/PersonalizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;-><init>(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V

    .line 622
    return-void
.end method
