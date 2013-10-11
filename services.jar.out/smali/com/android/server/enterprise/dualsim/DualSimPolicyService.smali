.class public Lcom/android/server/enterprise/dualsim/DualSimPolicyService;
.super Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;
.source "DualSimPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "DualSimPolicyService"

.field private static mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/enterprise/dualsim/IDualSimPolicy$Stub;-><init>()V

    .line 70
    const-string v0, "DualSimPolicyService"

    const-string v1, "DualSimPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    .line 75
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    .line 76
    return-void
.end method

.method private enforceDualSimPermission()I
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DUAL_SIM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public addPhoneToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "iccid"
    .parameter "phone"

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, status:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    .line 458
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addPhoneToSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 461
    :cond_0
    return v0
.end method

.method public checkPrivilegedNumber(Ljava/lang/String;I)I
    .locals 16
    .parameter "number"
    .parameter "simId"

    .prologue
    .line 317
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 320
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 321
    const/16 p2, 0x1

    .line 324
    :cond_0
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, iccID:Ljava/lang/String;
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkPrivilegedNumber iccID= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(Ljava/lang/String;)Z

    move-result v4

    .line 327
    .local v4, isCorporate:Z
    const/4 v7, 0x0

    .line 330
    .local v7, patternFound:Z
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " with sim card slot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Icc id ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " coporate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "SIM inserted ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move/from16 v11, p2

    .line 335
    .local v11, simRef:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    :try_start_0
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 336
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Loop check - SIM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    const/4 v14, -0x1

    sget-object v15, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 339
    .local v8, patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 340
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    if-eqz p1, :cond_2

    .line 341
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 342
    .local v9, regex:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 343
    .local v6, pattern:Ljava/util/regex/Pattern;
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Compiled regex was "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "and the number is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " found at simSlot= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 345
    .local v5, match:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 346
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found at sim list =>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v7, 0x1

    .line 348
    move/from16 p2, v11

    move/from16 v10, p2

    .line 375
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iccID:Ljava/lang/String;
    .end local v4           #isCorporate:Z
    .end local v5           #match:Ljava/util/regex/Matcher;
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    .end local v7           #patternFound:Z
    .end local v8           #patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #regex:Ljava/lang/String;
    .end local v11           #simRef:I
    .end local v12           #x:I
    .end local p2
    .local v10, simId:I
    :goto_1
    return v10

    .line 355
    .end local v10           #simId:I
    .restart local v3       #iccID:Ljava/lang/String;
    .restart local v4       #isCorporate:Z
    .restart local v7       #patternFound:Z
    .restart local v8       #patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #simRef:I
    .restart local v12       #x:I
    .restart local p2
    :cond_2
    add-int/lit8 v11, v11, 0x1

    .line 357
    sget-object v13, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-ne v11, v13, :cond_3

    .line 358
    const/4 v11, 0x0

    .line 335
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 362
    .end local v8           #patternList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/Exception;
    const-string v13, "DualSimPolicyService"

    const-string v14, ">>> checkPrivilegedNumber - exception"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    if-eqz v4, :cond_5

    if-nez v7, :cond_5

    .line 368
    const/16 p2, 0xff

    .line 369
    const-string v13, "DualSimPolicyService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Corporate SIM and number not found at any list, block call "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3           #iccID:Ljava/lang/String;
    .end local v4           #isCorporate:Z
    .end local v7           #patternFound:Z
    .end local v11           #simRef:I
    .end local v12           #x:I
    :cond_5
    move/from16 v10, p2

    .line 375
    .end local p2
    .restart local v10       #simId:I
    goto :goto_1
.end method

.method public clearWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "iccid"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, status:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    .line 482
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->clearWhiteList(ILjava/lang/String;)Z

    move-result v0

    .line 486
    :cond_0
    return v0
.end method

.method public forceDataSim(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "iccid"
    .parameter "enable"

    .prologue
    .line 187
    const/4 v3, 0x0

    .line 188
    .local v3, success:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    const-string v5, "DualSimPolicyService"

    const-string v6, "forceDataSim - Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v4

    .line 191
    .local v4, uid:I
    const/4 v2, 0x0

    .local v2, simcard:Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, simForced:Ljava/lang/String;
    const/4 v1, 0x0

    .line 194
    .local v1, simSlot:I
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getForcedDataSimcard()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz p2, :cond_5

    .line 198
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    .line 200
    const/4 v5, 0x0

    .line 227
    .end local v0           #simForced:Ljava/lang/String;
    .end local v1           #simSlot:I
    .end local v2           #simcard:Ljava/lang/String;
    .end local v4           #uid:I
    :goto_0
    return v5

    .line 213
    .restart local v0       #simForced:Ljava/lang/String;
    .restart local v1       #simSlot:I
    .restart local v2       #simcard:Ljava/lang/String;
    .restart local v4       #uid:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 202
    :cond_2
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 203
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    .line 208
    sget-object v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    .line 210
    const/4 v3, 0x1

    .line 215
    :cond_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 216
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->forceDataThroughSimcard(Ljava/lang/String;)Z

    move-result v3

    .end local v0           #simForced:Ljava/lang/String;
    .end local v1           #simSlot:I
    .end local v2           #simcard:Ljava/lang/String;
    .end local v4           #uid:I
    :cond_4
    :goto_1
    move v5, v3

    .line 227
    goto :goto_0

    .line 221
    .restart local v0       #simForced:Ljava/lang/String;
    .restart local v1       #simSlot:I
    .restart local v2       #simcard:Ljava/lang/String;
    .restart local v4       #uid:I
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v0, :cond_4

    .line 222
    :cond_6
    iget-object v5, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->disableForceData()Z

    move-result v3

    goto :goto_1
.end method

.method public getActiveSimForCall()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, status:Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v0

    .line 425
    .local v0, defaultForCall:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSimForCall() >> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getDefaultSimForVoiceCalls()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v5}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->hasIccCard(I)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 429
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 431
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 434
    :cond_1
    return-object v1
.end method

.method public getActiveSimForData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 301
    .local v0, activeSimForData:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveDataSim - Begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getActiveSimForData()I

    move-result v1

    .line 304
    .local v1, slotForData:I
    sget-object v2, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .end local v1           #slotForData:I
    :cond_0
    return-object v0
.end method

.method public getActiveSimForMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    .line 445
    .local v1, uid:I
    const-string v2, "DualSimPolicyService"

    const-string v3, "getActiveSimForMessage() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getActiveSimcardForMessaging()Ljava/lang/String;

    move-result-object v0

    .line 448
    .end local v1           #uid:I
    :cond_0
    return-object v0
.end method

.method public getForcedDataSim()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, status:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "DualSimPolicyService"

    const-string v2, "getForcedDataSim - Begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    .line 276
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->getActiveSimForData()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    return-object v0
.end method

.method public getIccId(I)Ljava/lang/String;
    .locals 1
    .parameter "slot"

    .prologue
    .line 495
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListForSimcard(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "iccid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, lString:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    .line 505
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->getWhiteListForSimcard(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 510
    :cond_0
    return-object v0
.end method

.method public isDataForced()Z
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, forced:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string v1, "DualSimPolicyService"

    const-string v2, "isDataForced()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isDataForced()Z

    move-result v0

    .line 292
    :cond_0
    return v0
.end method

.method public isMdmDualSimAvailable()Z
    .locals 1

    .prologue
    .line 514
    sget-object v0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isSimCardCorporate(Ljava/lang/String;)Z
    .locals 2
    .parameter "iccid"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "DualSimPolicyService"

    const-string v1, "isSimCardCorporate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 111
    const-string v0, "DualSimPolicyService"

    const-string v1, "onAdminAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 123
    const-string v0, "DualSimPolicyService"

    const-string v1, "onAdminRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 117
    const-string v0, "DualSimPolicyService"

    const-string v1, "onPreAdminRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public removePhoneFromWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "iccid"
    .parameter "phone"

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, status:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    .line 470
    .local v1, uid:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removePhoneFromSimcardWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 473
    :cond_0
    return v0
.end method

.method public setActiveSimForCall(Ljava/lang/String;)Z
    .locals 6
    .parameter "iccid"

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, status:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v2

    .line 386
    .local v2, uid:I
    iget-object v3, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, slot:I
    const/16 v3, 0xff

    if-eq v0, v3, :cond_0

    .line 389
    const-string v3, "DualSimPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setActiveSimForCall() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v3, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setDefaultSimForVoiceCalls(I)Z

    move-result v1

    .line 394
    .end local v0           #slot:I
    .end local v2           #uid:I
    :cond_0
    return v1
.end method

.method public setActiveSimForData(Ljava/lang/String;)Z
    .locals 6
    .parameter "iccid"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 239
    .local v2, success:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    const-string v4, "DualSimPolicyService"

    const-string v5, "setDataSim - Begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v3

    .line 244
    .local v3, uid:I
    const/4 v1, 0x0

    .line 245
    .local v1, simcard:Ljava/lang/String;
    const/4 v0, 0x0

    .line 247
    .local v0, simSlot:I
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isDataForced()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 248
    :cond_0
    const/4 v4, 0x0

    .line 263
    .end local v0           #simSlot:I
    .end local v1           #simcard:Ljava/lang/String;
    .end local v3           #uid:I
    :goto_0
    return v4

    .line 259
    .restart local v0       #simSlot:I
    .restart local v1       #simcard:Ljava/lang/String;
    .restart local v3       #uid:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_2
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getInsertedSimCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 252
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->switchToSimDataNetwork(I)Z

    .line 255
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->setActiveSimForData(I)V

    .line 256
    const/4 v2, 0x1

    .end local v0           #simSlot:I
    .end local v1           #simcard:Ljava/lang/String;
    .end local v3           #uid:I
    :cond_3
    move v4, v2

    .line 263
    goto :goto_0
.end method

.method public setActiveSimForMessage(Ljava/lang/String;)Z
    .locals 5
    .parameter "iccid"

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, status:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v1

    .line 405
    .local v1, uid:I
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveSimForMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->setActiveSimcardForMessaging(Ljava/lang/String;)Z

    move-result v0

    .line 411
    const-string v2, "DualSimPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDualSimDBProxy.setActiveSimcardForMessaging() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v1           #uid:I
    :cond_0
    return v0
.end method

.method public setCorporateSimCard(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "iccid"
    .parameter "status"

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->isMdmDualSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCorporateSimCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->enforceDualSimPermission()I

    move-result v3

    .line 139
    .local v3, uid:I
    sget-object v4, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimAdapter:Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/DualSimAdapter;->getIccSlot(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    .line 140
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 162
    .end local v1           #result:Z
    .end local v3           #uid:I
    .local v2, result:I
    :goto_0
    return v2

    .line 145
    .end local v2           #result:I
    .restart local v1       #result:Z
    .restart local v3       #uid:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->isCorporateSimcard(ILjava/lang/String;)Z

    move-result v0

    .line 147
    .local v0, isCorporate:Z
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isCorporate? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-ne p2, v0, :cond_2

    .line 150
    move v1, p2

    .line 160
    :goto_1
    const-string v4, "DualSimPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #isCorporate:Z
    .end local v3           #uid:I
    :cond_1
    move v2, v1

    .line 162
    .restart local v2       #result:I
    goto :goto_0

    .line 152
    .end local v2           #result:I
    .restart local v0       #isCorporate:Z
    .restart local v3       #uid:I
    :cond_2
    if-eqz p2, :cond_3

    .line 154
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->addCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;->mDualSimDBProxy:Lcom/android/server/enterprise/dualsim/DualSimDBProxy;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/dualsim/DualSimDBProxy;->removeCorporateSimcard(ILjava/lang/String;)Z

    move-result v1

    goto :goto_1
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "DualSimPolicyService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method
