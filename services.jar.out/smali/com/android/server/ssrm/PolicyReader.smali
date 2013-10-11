.class public Lcom/android/server/ssrm/PolicyReader;
.super Ljava/lang/Object;
.source "PolicyReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;,
        Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;,
        Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "XMLPolicyReader"

.field private static policyReader:Lcom/android/server/ssrm/PolicyReader;


# instance fields
.field private final APP_STATUS_TRIGGER:Ljava/lang/String;

.field private final FOREGROUND_TRIGGER:Ljava/lang/String;

.field exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

.field in:Ljava/io/InputStream;

.field isAppStatusTrigger:Z

.field isException:Z

.field isForegroundTrigger:Z

.field isTemperture:Z

.field mActionTriggerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;"
        }
    .end annotation
.end field

.field mBoostMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mExceptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;",
            ">;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;

.field mSIOPScenario:Ljava/lang/String;

.field mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

.field private mthermistorObserverAPTag:Z

.field private mthermistorObserverCPTag:Z

.field parser:Lorg/xmlpull/v1/XmlPullParser;

.field stepLevel:I

.field tempratureTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/PolicyReader;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    .line 54
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    .line 56
    const-string v0, "ForegroundTrigger"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->FOREGROUND_TRIGGER:Ljava/lang/String;

    .line 57
    const-string v0, "AppStatusTrigger"

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->APP_STATUS_TRIGGER:Ljava/lang/String;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    .line 72
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    .line 85
    return-void
.end method

.method private addActionList()V
    .locals 6

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 228
    .local v2, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 229
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-virtual {v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, hashMapKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    check-cast v2, Ljava/util/HashMap;

    .line 233
    .restart local v2       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    if-eqz v3, :cond_3

    .line 235
    if-eqz v2, :cond_2

    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .end local v0           #hashMapKey:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 239
    .restart local v0       #hashMapKey:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 242
    .restart local v2       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    const-string v3, "ForegroundTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    if-eqz v3, :cond_1

    .line 248
    if-eqz v2, :cond_5

    .line 250
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 251
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_1
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .restart local v1       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 259
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .restart local v1       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 262
    .restart local v2       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    const-string v3, "AppStatusTrigger"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 267
    .end local v0           #hashMapKey:Ljava/lang/String;
    .end local v1           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;"
    :cond_6
    const-string v3, "XMLPolicyReader"

    const-string v4, "Action Attribute is null"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addExceptionList(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    .line 273
    new-instance v0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    .line 274
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "packageName"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setPackageName(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "statusName"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setStatusName(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    const-string v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->setValue(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->exceptionConditionObj:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method private extractScenarioAction(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 330
    const-string v1, "type"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, actionType:Ljava/lang/String;
    const-string v1, "CPU_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x0

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    const-string v1, "CPU_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x1

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    .line 355
    .end local v0           #actionType:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 334
    .restart local v0       #actionType:Ljava/lang/String;
    :cond_2
    const-string v1, "GPU_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 335
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x2

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    const-string v1, "BUS_MIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x4

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_4
    const-string v1, "GPU_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x3

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto :goto_1

    .line 347
    :cond_5
    const-string v1, "BUS_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    const/4 v2, 0x5

    const-string v3, "value"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->addAction(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 352
    .end local v0           #actionType:Ljava/lang/String;
    :cond_6
    const-string v1, "XMLPolicyReader"

    const-string v2, "Expected Parent not present"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private extractStep(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    .locals 5
    .parameter "parser"
    .parameter "thermistorObserverAPTag"
    .parameter "thermistorObserverCPTag"

    .prologue
    .line 358
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractStep :: thermistorObserverAPTag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-boolean v2, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    if-eqz v2, :cond_6

    .line 361
    new-instance v2, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    iput-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 363
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setLevel(Ljava/lang/String;)V

    .line 362
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setSurfaceTemp(Ljava/lang/String;)V

    goto :goto_1

    .line 370
    :cond_2
    if-eqz p2, :cond_5

    .line 371
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 373
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractStep :: thermistorObserverAPTag true Adding for mSIOPScenario ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    .end local v0           #i:I
    :cond_3
    :goto_2
    return-void

    .line 376
    .restart local v0       #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, scenarios:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/ssrm/PolicyReader;->mThermisterDataset:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractStep :: thermistorObserverAPTag true Adding for mSIOPScenario ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 383
    .end local v1           #scenarios:[Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_3

    goto :goto_2

    .line 389
    .end local v0           #i:I
    :cond_6
    const/4 v2, 0x0

    const-string v3, "level"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    goto :goto_2
.end method

.method private extractType(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    .locals 7
    .parameter "parser"
    .parameter "thermistorObserverAPTag"
    .parameter "thermistorObserverCPTag"

    .prologue
    .line 281
    const-string v4, "XMLPolicyReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractType :: thermistorObserverAPTag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    if-eqz p2, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 288
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, type:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    check-cast v2, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 291
    .restart local v2       #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    invoke-direct {p0, v3, v2}, Lcom/android/server/ssrm/PolicyReader;->fillDataSet(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;)V

    .line 302
    .end local v3           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 293
    .restart local v3       #type:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, scenarios:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 295
    iget-object v4, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    check-cast v2, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 296
    .restart local v2       #tempSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    invoke-direct {p0, v3, v2}, Lcom/android/server/ssrm/PolicyReader;->fillDataSet(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    .end local v0           #i:I
    .end local v1           #scenarios:[Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_2
    if-eqz p3, :cond_0

    goto :goto_0
.end method

.method private fillDataSet(Ljava/lang/String;Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;)V
    .locals 3
    .parameter "type"
    .parameter "tempSet"

    .prologue
    const/4 v2, 0x0

    .line 305
    const-string v0, "ARMFreq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setArmFreq(Ljava/lang/String;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const-string v0, "ACL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setAcl(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    const-string v0, "Flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setFlash(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    const-string v0, "ARMCore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setArmCore(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_4
    const-string v0, "LCDBrightness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setLcdBrightness(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_5
    const-string v0, "ChargeCurrent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setChargeCurrent(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_6
    const-string v0, "RecordingStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setRecordingStop(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_7
    const-string v0, "DualRecordingToSingle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 320
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setDualRecordingToSingle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :cond_8
    const-string v0, "CPPowerBackOut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 322
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setCPPowerBackOut(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_9
    const-string v0, "GPUFreq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "value"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->setGPUFreq(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/android/server/ssrm/PolicyReader;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/server/ssrm/PolicyReader;

    invoke-direct {v0}, Lcom/android/server/ssrm/PolicyReader;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/PolicyReader;->policyReader:Lcom/android/server/ssrm/PolicyReader;

    return-object v0
.end method

.method static readFingerPrint()Ljava/lang/String;
    .locals 14

    .prologue
    .line 721
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getDecryptedPolicyPath()Ljava/lang/String;

    move-result-object v9

    .line 722
    .local v9, path:Ljava/lang/String;
    const/4 v3, 0x0

    .line 724
    .local v3, fingerprint:Ljava/lang/String;
    const/4 v6, 0x0

    .line 726
    .local v6, in:Ljava/io/InputStream;
    if-eqz v9, :cond_3

    .line 727
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading XML from path -----> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 730
    .end local v6           #in:Ljava/io/InputStream;
    .local v7, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 731
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 732
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 733
    .local v1, eventType:I
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    if-eq v1, v10, :cond_4

    .line 734
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 738
    :pswitch_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PowerFramework"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    move-result v10

    if-eqz v10, :cond_0

    .line 740
    const/4 v10, 0x0

    :try_start_2
    const-string v11, "fingerprint"

    invoke-interface {v8, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v3

    .line 758
    if-eqz v7, :cond_1

    .line 759
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    move-object v4, v3

    .line 768
    .end local v1           #eventType:I
    .end local v3           #fingerprint:Ljava/lang/String;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local v4, fingerprint:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 742
    .end local v4           #fingerprint:Ljava/lang/String;
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v1       #eventType:I
    .restart local v3       #fingerprint:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v5

    .line 743
    .local v5, ie:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_0

    .line 751
    .end local v1           #eventType:I
    .end local v5           #ie:Ljava/lang/IndexOutOfBoundsException;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v0

    move-object v6, v7

    .line 752
    .end local v7           #in:Ljava/io/InputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #in:Ljava/io/InputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 758
    if-eqz v6, :cond_2

    .line 759
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 766
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v4, v3

    .line 768
    .end local v3           #fingerprint:Ljava/lang/String;
    .restart local v4       #fingerprint:Ljava/lang/String;
    goto :goto_2

    .line 758
    .end local v4           #fingerprint:Ljava/lang/String;
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v1       #eventType:I
    .restart local v3       #fingerprint:Ljava/lang/String;
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v7, :cond_5

    .line 759
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_5
    :goto_5
    move-object v6, v7

    .line 764
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 753
    .end local v1           #eventType:I
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    .line 754
    .local v2, ex:Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 758
    if-eqz v6, :cond_2

    .line 759
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 760
    :catch_3
    move-exception v0

    .line 761
    .local v0, e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v2           #ex:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 757
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 758
    :goto_8
    if-eqz v6, :cond_6

    .line 759
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 757
    :cond_6
    :goto_9
    throw v10

    .line 760
    :catch_4
    move-exception v0

    .line 761
    .restart local v0       #e:Ljava/io/IOException;
    const-string v11, "XMLPolicyReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 760
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v0

    .line 761
    .local v0, e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 760
    .end local v0           #e:Ljava/io/IOException;
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v1       #eventType:I
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_6
    move-exception v0

    .line 761
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 760
    .end local v0           #e:Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 761
    .restart local v0       #e:Ljava/io/IOException;
    const-string v10, "XMLPolicyReader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during reading policy XML for BuildFinger "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 757
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #eventType:I
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto/16 :goto_8

    .line 753
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    :catch_8
    move-exception v2

    move-object v6, v7

    .end local v7           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    goto/16 :goto_6

    .line 751
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 734
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getBoostParameters(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "packageName"
    .parameter "isForeground"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 689
    iget-object v2, p0, Lcom/android/server/ssrm/PolicyReader;->mBoostMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 690
    .local v0, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    if-eqz p2, :cond_2

    .line 691
    const-string v2, "ForegroundTrigger"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    const-string v1, "ForegroundTrigger"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 706
    .end local v0           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 694
    .restart local v0       #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;>;>;"
    :cond_1
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Key Associated with the given package name in Foreground Trigger :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_2
    const-string v2, "AppStatusTrigger"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 699
    const-string v1, "AppStatusTrigger"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    .line 701
    :cond_3
    const-string v2, "XMLPolicyReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Key Associated with the given package name in Appstatus Trigger:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getTempratureTable(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 710
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method

.method public logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 714
    sget-boolean v0, Lcom/android/server/ssrm/PolicyReader;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 715
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    return-void
.end method

.method public readXML()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 92
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getDecryptedPolicyPath()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, path:Ljava/lang/String;
    const-string v8, "XMLPolicyReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readXML:: read XML policy from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    .line 96
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 97
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v9, Ljava/io/InputStreamReader;

    iget-object v10, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 98
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 99
    .local v1, eventType:I
    :goto_0
    if-eq v1, v11, :cond_19

    .line 100
    packed-switch v1, :pswitch_data_0

    .line 198
    :cond_0
    :goto_1
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TemperatureTable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_8

    .line 106
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "pollingTimeOut"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, time:Ljava/lang/String;
    const-string v8, "XMLPolicyReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thermistor Duration is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 109
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V

    .line 113
    :goto_2
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "scenario"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    .line 114
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    :cond_1
    const-string v8, "default"

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    .line 117
    :cond_2
    const-string v8, "XMLPolicyReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TemperatureTable START_TAG :: mSIOPScenario :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 119
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mSIOPScenario:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, scenarios:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    array-length v8, v6

    if-ge v2, v8, :cond_4

    .line 121
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    aget-object v9, v6, v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 111
    .end local v2           #i:I
    .end local v6           #scenarios:[Ljava/lang/String;
    :cond_3
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 124
    .end local v7           #time:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 125
    .local v3, ie:Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    const-string v8, "XMLPolicyReader"

    const-string v9, "Index Out of Bounds Exception Handling for Thermistor Duration"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->setThermistorTimerDuration(J)V

    .line 128
    .end local v3           #ie:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 200
    .end local v1           #eventType:I
    :catch_1
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v8, "XMLPolicyReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readXML:: Exception e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :try_start_4
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v8, :cond_5

    .line 205
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 210
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    :goto_4
    if-eqz v5, :cond_6

    const-string v8, "/data/system/temp.xml"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 211
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 212
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 216
    :cond_6
    const-string v8, "XMLPolicyReader"

    const-string v9, "Reading XML -- Done---"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    if-eqz v5, :cond_7

    const-string v8, "/data/system/temp.xml"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 219
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 221
    :cond_7
    return-void

    .line 129
    .restart local v1       #eventType:I
    :cond_8
    :try_start_5
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "step"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 130
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v9, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iget-boolean v10, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/ssrm/PolicyReader;->extractStep(Lorg/xmlpull/v1/XmlPullParser;ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 203
    .end local v1           #eventType:I
    :catchall_0
    move-exception v8

    .line 204
    :try_start_6
    iget-object v9, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v9, :cond_9

    .line 205
    iget-object v9, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 210
    :cond_9
    :goto_6
    if-eqz v5, :cond_a

    const-string v9, "/data/system/temp.xml"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 211
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 212
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 203
    :cond_a
    throw v8

    .line 131
    .restart local v1       #eventType:I
    :cond_b
    :try_start_7
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 132
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v9, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    iget-boolean v10, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/ssrm/PolicyReader;->extractType(Lorg/xmlpull/v1/XmlPullParser;ZZ)V

    goto/16 :goto_1

    .line 133
    :cond_c
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Exception"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 134
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    .line 135
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 137
    :cond_d
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ForegroundTrigger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 138
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    .line 139
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "packageName"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    .line 140
    new-instance v4, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    .line 141
    .local v4, mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setPackageName(Ljava/lang/String;)V

    .line 142
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 144
    .end local v4           #mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    :cond_e
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AppStatusTrigger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 145
    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    if-nez v8, :cond_f

    .line 146
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    .line 147
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "packageName"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    .line 148
    new-instance v4, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    invoke-direct {v4, p0}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;-><init>(Lcom/android/server/ssrm/PolicyReader;)V

    .line 149
    .restart local v4       #mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setPackageName(Ljava/lang/String;)V

    .line 150
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "statusName"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setStatusName(Ljava/lang/String;)V

    .line 152
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v9, 0x0

    const-string v10, "value"

    invoke-interface {v8, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 155
    .end local v4           #mActionAttr:Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;
    :cond_f
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/PolicyReader;->addExceptionList(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 158
    :cond_10
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "action"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 159
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v8}, Lcom/android/server/ssrm/PolicyReader;->extractScenarioAction(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 160
    :cond_11
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ThermistorObserverAP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 161
    const-string v8, "XMLPolicyReader"

    const-string v9, "ThermistorObserver AP Statring"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    goto/16 :goto_1

    .line 163
    :cond_12
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ThermistorObserverCP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 164
    const-string v8, "XMLPolicyReader"

    const-string v9, "ThermistorObserver CP Statring"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z

    goto/16 :goto_1

    .line 169
    :pswitch_2
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TemperatureTable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 170
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    goto/16 :goto_1

    .line 171
    :cond_13
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ForegroundTrigger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 173
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyReader;->addActionList()V

    .line 174
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isForegroundTrigger:Z

    goto/16 :goto_1

    .line 175
    :cond_14
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AppStatusTrigger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 177
    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    if-nez v8, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/server/ssrm/PolicyReader;->addActionList()V

    .line 179
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isAppStatusTrigger:Z

    goto/16 :goto_1

    .line 181
    :cond_15
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "step"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 182
    iget-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isTemperture:Z

    if-nez v8, :cond_0

    .line 183
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/ssrm/PolicyReader;->stepLevel:I

    goto/16 :goto_1

    .line 185
    :cond_16
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Exception"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 186
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->isException:Z

    .line 187
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/ssrm/PolicyReader;->mActionTriggerList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;

    iget-object v9, p0, Lcom/android/server/ssrm/PolicyReader;->mExceptionList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->setExceptionList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 189
    :cond_17
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ThermistorObserverAP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 190
    const-string v8, "XMLPolicyReader"

    const-string v9, "ThermistorObserver Ends"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverAPTag:Z

    goto/16 :goto_1

    .line 192
    :cond_18
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ThermistorObserverCP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 193
    const-string v8, "XMLPolicyReader"

    const-string v9, "ThermistorObserver CP Ends"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/PolicyReader;->mthermistorObserverCPTag:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 207
    .end local v1           #eventType:I
    :catch_2
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    const-string v9, "XMLPolicyReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "readXML:: Exception e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 207
    .local v0, e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 208
    .local v0, e:Ljava/io/IOException;
    const-string v8, "XMLPolicyReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readXML:: Exception e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 204
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #eventType:I
    :cond_19
    :try_start_8
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    if-eqz v8, :cond_1a

    .line 205
    iget-object v8, p0, Lcom/android/server/ssrm/PolicyReader;->in:Ljava/io/InputStream;

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 210
    :cond_1a
    :goto_7
    if-eqz v5, :cond_6

    const-string v8, "/data/system/temp.xml"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 211
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 212
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 207
    :catch_4
    move-exception v0

    .line 208
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "XMLPolicyReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readXML:: Exception e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/PolicyReader;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
