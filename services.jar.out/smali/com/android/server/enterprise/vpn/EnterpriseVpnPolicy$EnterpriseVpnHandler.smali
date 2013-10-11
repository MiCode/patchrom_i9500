.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;
.super Landroid/os/Handler;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseVpnHandler"
.end annotation


# static fields
.field private static final ACTION_IPTABLE_EXECUTE:I = 0x5

.field private static final ACTION_NOTIFY_APP_LAUNCH:I = 0x7

.field private static final ACTION_PACKAGE_ADDED:I = 0x2

.field private static final ACTION_PACKAGE_REMOVED:I = 0x3

.field private static final ACTION_RETRY_VPN_CONNECTION:I = 0x6

.field private static final ACTION_VPN_INITIALIZE_BIND:I = 0x8

.field private static final CONNECTIVITY_ACTION:I = 0x4

.field private static final ENTERPRISE_STATUS_CALLBACK:I = 0x1

.field private static final GET_STATUS_IDLE:I = 0x1

.field private static final VPN_CONNECT_FAILURE:I = 0x5

.field private static final VPN_CONNECT_READY:I = 0x1

.field private static final VPN_CONNECT_SUCCESS:I = 0x4

.field private static final VPN_PROFILE_CONNECTING:I = 0x2

.field private static final VPN_PROFILE_DELETE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 0

    .prologue
    .line 2633
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 51
    .parameter "msg"

    .prologue
    .line 2653
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> Message received"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 2655
    .local v27, map:Landroid/os/Bundle;
    const/16 v39, -0x1

    .line 2656
    .local v39, uid:I
    const/16 v43, 0x0

    .line 2657
    .local v43, vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    const/16 v29, 0x0

    .local v29, packageName:Ljava/lang/String;
    const/16 v32, 0x0

    .local v32, profileName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2658
    .local v16, errorString:Ljava/lang/String;
    const/16 v38, -0x1

    .line 2659
    .local v38, status:I
    const/4 v6, 0x0

    .line 2660
    .local v6, check_install_type:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v44, v0

    packed-switch v44, :pswitch_data_0

    .line 3071
    :cond_0
    :goto_0
    return-void

    .line 2662
    :pswitch_0
    const-string v44, "status"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v38

    .line 2663
    const-string v44, "profileName"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2664
    const-string v44, "errorString"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2665
    if-nez v16, :cond_1

    .line 2666
    const-string v16, "Empty"

    .line 2668
    :cond_1
    const-string v44, "state"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v37

    .line 2669
    .local v37, state:I
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ENTERPRISE_STATUS_CALLBACK >> profile : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ",  state : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, ", status : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ENTERPRISE_STATUS_CALLBACK >> Error "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    const/16 v17, 0x0

    .line 2673
    .local v17, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2674
    .local v42, vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    if-eqz v42, :cond_15

    .line 2675
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v24

    .line 2676
    .local v24, list:Ljava/util/ArrayList;
    if-eqz v24, :cond_0

    .line 2677
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 2678
    .local v5, array:[Ljava/lang/Object;
    array-length v0, v5

    move/from16 v23, v0

    .line 2679
    .local v23, length:I
    if-nez v37, :cond_10

    .line 2680
    packed-switch v38, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_0

    .line 2729
    :pswitch_2
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 2730
    aget-object v43, v5, v17

    .end local v43           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2731
    .restart local v43       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_2

    .line 2732
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2733
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v39

    .line 2734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2737
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2729
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2682
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/List;

    move-result-object v36

    .line 2683
    .local v36, runningPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 2684
    aget-object v43, v5, v17

    .end local v43           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2686
    .restart local v43       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v44

    if-lez v44, :cond_3

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v44

    if-lez v44, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v36

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/util/List;)Z

    move-result v44

    if-eqz v44, :cond_4

    .line 2690
    :cond_3
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_4

    .line 2691
    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2692
    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2693
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v39

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2683
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 2700
    :cond_5
    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    .line 2703
    .local v31, profileErrorMessageSuccess:Z
    if-eqz v31, :cond_0

    .line 2704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v44

    if-lez v44, :cond_6

    .line 2706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2708
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2713
    .end local v31           #profileErrorMessageSuccess:Z
    .end local v36           #runningPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4
    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 2714
    aget-object v43, v5, v17

    .end local v43           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2715
    .restart local v43       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_7

    .line 2716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2719
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2721
    :cond_7
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2713
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 2723
    :cond_8
    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2726
    :cond_9
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2740
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2742
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2743
    :cond_b
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2749
    :pswitch_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    const-string v44, "Network Changed"

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_e

    .line 2751
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "Handling VPN CONNECTING state on Network Change"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 2753
    aget-object v43, v5, v17

    .end local v43           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2754
    .restart local v43       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_c

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v46

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static/range {v44 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2758
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2760
    :cond_c
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2752
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2762
    :cond_d
    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    :cond_e
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2766
    :cond_f
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2769
    :pswitch_6
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "The Start Connection callback for removeEnterpriseVpnConnection is recieved and its state is  "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "Status is "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2773
    :cond_10
    sparse-switch v38, :sswitch_data_0

    goto/16 :goto_0

    .line 2777
    :goto_5
    :sswitch_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ENTERPRISE_STATUS_CALLBACK >> VPN disconnect successfully"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    .line 2779
    aget-object v43, v5, v17

    .end local v43           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2780
    .restart local v43       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_11

    .line 2781
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2782
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v39

    .line 2783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    .line 2786
    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2778
    :cond_11
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2775
    :sswitch_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ENTERPRISE_STATUS_CALLBACK >> VPN disconnect failure. damn :( :"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2789
    :cond_12
    const/16 v44, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v31

    .line 2791
    .restart local v31       #profileErrorMessageSuccess:Z
    if-eqz v31, :cond_13

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v44

    if-lez v44, :cond_14

    .line 2794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2799
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2796
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto :goto_7

    .line 2804
    .end local v5           #array:[Ljava/lang/Object;
    .end local v23           #length:I
    .end local v24           #list:Ljava/util/ArrayList;
    .end local v31           #profileErrorMessageSuccess:Z
    :cond_15
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ENTERPRISE_STATUS_CALLBACK >> ProfileNameVpnEntry returned null in handleMessage"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2809
    .end local v17           #i:I
    .end local v37           #state:I
    .end local v42           #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :pswitch_7
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> Handle MSG ACTION_PACKAGE_ADDED"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const-string v44, "uid"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 2811
    const-string v44, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2812
    const-string v44, "new_install_or_update"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2813
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_16

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "The install type value during package added is "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :cond_16
    if-eqz v29, :cond_0

    .line 2815
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_17

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_PACKAGE_ADDED >> PackageName and UID : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_17
    const-string v44, "com.mocana.vpn.android"

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_19

    .line 2817
    if-nez v6, :cond_18

    .line 2818
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$502(Z)Z

    .line 2821
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2822
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    move/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)Z

    move-result v44

    if-eqz v44, :cond_0

    .line 2823
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_PACKAGE_ADDED >> Package found in DB with rule proceed with logic"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-result-object v41

    .line 2826
    .local v41, vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v41, :cond_0

    .line 2827
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v32

    .line 2828
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v11

    .line 2829
    .local v11, containerId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v44

    if-eqz v44, :cond_20

    if-lez v11, :cond_1a

    if-lez v11, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_20

    .line 2833
    :cond_1a
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_PACKAGE_ADDED >> Network is connected via isNetworkConnected()"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    const-string v45, "key_vpn"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    .line 2837
    .local v35, responseData:Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v40, 0x0

    .line 2838
    .local v40, value:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v44

    if-nez v44, :cond_1b

    .line 2839
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #value:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 2842
    .restart local v40       #value:Ljava/lang/String;
    :cond_1b
    if-eqz v40, :cond_0

    .line 2843
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_1c

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_PACKAGE_ADDED >> Callback state: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    :cond_1c
    const-string v44, "CONNECTED"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_1e

    .line 2845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2846
    .restart local v42       #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    if-eqz v42, :cond_1d

    .line 2847
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v20

    .line 2848
    .local v20, interfaceName:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2851
    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2852
    const/16 v44, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2874
    .end local v20           #interfaceName:Ljava/lang/String;
    .end local v35           #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v40           #value:Ljava/lang/String;
    .end local v42           #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :catch_0
    move-exception v14

    .line 2875
    .local v14, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_PACKAGE_ADDED >> Exception at mocana:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2856
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v35       #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v40       #value:Ljava/lang/String;
    .restart local v42       #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :cond_1d
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "Profilename not found in the map"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2858
    .end local v42           #vpnEntry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    :cond_1e
    const-string v44, "CONNECTING"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_0

    .line 2859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v44, v0

    new-instance v45, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-direct/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v46

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    move/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v44

    if-nez v44, :cond_0

    .line 2861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    const-string v45, "key_vpn"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    .line 2862
    const/16 v40, 0x0

    .line 2863
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v44

    if-nez v44, :cond_1f

    .line 2864
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #value:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 2865
    .restart local v40       #value:Ljava/lang/String;
    if-eqz v40, :cond_1f

    .line 2866
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_PACKAGE_ADDED >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2869
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_PACKAGE_ADDED >> Cannot start vpn, mocana returned error"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2878
    .end local v35           #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v40           #value:Ljava/lang/String;
    :cond_20
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_PACKAGE_ADDED >> Network is not connected via isNetworkConnected()"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2885
    .end local v11           #containerId:I
    .end local v41           #vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :pswitch_8
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> Handle MSG ACTION_PACKAGE_REMOVED"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const-string v44, "package"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2888
    const-string v44, "com.mocana.vpn.android"

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_21

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2892
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43           #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    check-cast v43, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2893
    .restart local v43       #vpnObj:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v43, :cond_0

    .line 2894
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v32

    .line 2895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->deleteUIDFromPackageData(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_0

    .line 2896
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> Handle MSG ACTION_PACKAGE_REMOVED >> Remove from iptable/hashmap"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2902
    :pswitch_9
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> CONNECTIVITY_ACTION >> Handle MSG CONNECTIVITY_ACTION"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    const-string v44, "status"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    .line 2904
    .local v28, networkState:Z
    const/16 v44, 0x1

    move/from16 v0, v28

    move/from16 v1, v44

    if-ne v0, v1, :cond_22

    .line 2905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 2907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2909
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 2910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto/16 :goto_0

    .line 2914
    .end local v28           #networkState:Z
    :pswitch_a
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_IPTABLE_EXECUTE >> Handle MSG ACTION_IPTABLE_EXECUTE"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    const-string v44, "command"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2916
    .local v7, command:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 2917
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    .local v10, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v44, " "

    move-object/from16 v0, v44

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2919
    .local v9, commandArray:[Ljava/lang/String;
    move-object v4, v9

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_23

    aget-object v8, v4, v18

    .line 2920
    .local v8, commandArg:Ljava/lang/String;
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2919
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 2923
    .end local v8           #commandArg:Ljava/lang/String;
    :cond_23
    :try_start_2
    new-instance v44, Ljava/lang/ProcessBuilder;

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-direct/range {v44 .. v45}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v10}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v44

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v30

    .line 2925
    .local v30, process:Ljava/lang/Process;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2926
    .end local v30           #process:Ljava/lang/Process;
    :catch_1
    move-exception v14

    .line 2927
    .local v14, e:Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_IPTABLE_EXECUTE >> IOException iptables command failed "

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2928
    .end local v14           #e:Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 2929
    .local v14, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_IPTABLE_EXECUTE >> InterruptedException iptables command failed "

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2934
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #command:Ljava/lang/String;
    .end local v9           #commandArray:[Ljava/lang/String;
    .end local v10           #commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #e:Ljava/lang/InterruptedException;
    .end local v18           #i$:I
    .end local v22           #len$:I
    :pswitch_b
    const-string v44, "uid"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v44

    if-eqz v44, :cond_0

    .line 2936
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> notifyContainerAppLaunch network on"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v44

    const-string v45, "EnterpriseVpn"

    const/16 v46, 0x1

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const-string v48, "UID_APP"

    aput-object v48, v46, v47

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v49

    aput-object v49, v47, v48

    const/16 v48, 0x2

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    const-string v50, "profileName"

    aput-object v50, v48, v49

    const/16 v49, 0x1

    const-string v50, "applicationInfo"

    aput-object v50, v48, v49

    invoke-virtual/range {v44 .. v48}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2947
    .local v13, cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v44

    if-lez v44, :cond_0

    .line 2948
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 2949
    .local v12, cv:Landroid/content/ContentValues;
    const-string v44, "profileName"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2950
    const-string v44, "applicationInfo"

    move-object/from16 v0, v44

    invoke-virtual {v12, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2951
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_24

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> packageName : "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " profileName :"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "interface: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v46

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    .line 2955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    const-string v45, "key_vpn"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    .line 2956
    .local v34, response:Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v40, 0x0

    .line 2957
    .restart local v40       #value:Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v44

    if-nez v44, :cond_25

    .line 2958
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #value:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 2960
    .restart local v40       #value:Ljava/lang/String;
    :cond_25
    if-eqz v40, :cond_0

    .line 2961
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Value is not null and going inside start connection"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 2964
    .local v15, entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_26

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Callback state: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_26
    const-string v44, "IDLE"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_27

    const-string v44, "FAILED"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_29

    .line 2966
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v44, v0

    new-instance v45, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-direct/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v46

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    move/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v44

    if-nez v44, :cond_0

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    const-string v45, "key_vpn"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v34

    .line 2969
    const/16 v40, 0x0

    .line 2970
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v44

    if-nez v44, :cond_28

    .line 2971
    invoke-virtual/range {v34 .. v34}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #value:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 2973
    .restart local v40       #value:Ljava/lang/String;
    if-eqz v40, :cond_28

    .line 2974
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_28

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    move-object/from16 v2, v40

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Cannot start vpn, mocana returned error"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 2997
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v34           #response:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v40           #value:Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 2999
    .local v14, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> Exceptionin notify: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2980
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v12       #cv:Landroid/content/ContentValues;
    .restart local v13       #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15       #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .restart local v34       #response:Landroid/app/enterprise/EnterpriseResponseData;
    .restart local v40       #value:Ljava/lang/String;
    :cond_29
    :try_start_4
    const-string v44, "CONNECTED"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_0

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v44

    if-eqz v44, :cond_0

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 2982
    .restart local v41       #vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    if-eqz v41, :cond_0

    .line 2983
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v44

    if-nez v44, :cond_2a

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move/from16 v1, v39

    move-object/from16 v2, v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    .line 2986
    const/16 v44, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    .line 2987
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    .line 2988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v39

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2990
    :cond_2a
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$800()Z

    move-result v44

    if-eqz v44, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_NOTIFY_APP_LAUNCH >> Already running application ignoring:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 3004
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #cvList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v34           #response:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v40           #value:Ljava/lang/String;
    .end local v41           #vpn:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :pswitch_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Handle MSG ACTION_RETRY_VPN_CONNECTION"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z

    move-result v44

    if-eqz v44, :cond_35

    .line 3007
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Network is connected via isNetworkConnected()"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    .line 3010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2b
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_34

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 3011
    .local v21, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    .line 3012
    .restart local v15       #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v25

    .line 3013
    .local v25, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    const/16 v33, 0x1

    .line 3016
    .local v33, removeProfileError:Z
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_2c
    :goto_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_2e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    .line 3017
    .local v26, localState:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v44

    if-lez v44, :cond_2d

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v44

    if-lez v44, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v45

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z
    invoke-static/range {v44 .. v45}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_2c

    .line 3020
    :cond_2d
    const/16 v33, 0x0

    goto :goto_a

    .line 3023
    .end local v26           #localState:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    :cond_2e
    if-eqz v33, :cond_2f

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 3055
    .end local v15           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #key:Ljava/lang/String;
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .end local v33           #removeProfileError:Z
    :catch_4
    move-exception v14

    .line 3056
    .restart local v14       #e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Exception at mocana:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3026
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v15       #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v21       #key:Ljava/lang/String;
    .restart local v25       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .restart local v33       #removeProfileError:Z
    :cond_2f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    const-string v45, "key_vpn"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    .line 3027
    .restart local v35       #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    const/16 v40, 0x0

    .line 3028
    .restart local v40       #value:Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v44

    if-nez v44, :cond_30

    .line 3029
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #value:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 3032
    .restart local v40       #value:Ljava/lang/String;
    :cond_30
    if-eqz v40, :cond_2b

    .line 3033
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Callback state: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const-string v44, "IDLE"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_31

    const-string v44, "FAILED"

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_2b

    .line 3035
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-result-object v44

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v44, v0

    new-instance v45, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    invoke-direct/range {v45 .. v47}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v46, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I
    invoke-static/range {v46 .. v46}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I

    move-result v46

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    move-object/from16 v2, v45

    move/from16 v3, v46

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v44

    if-nez v44, :cond_33

    .line 3037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    const-string v45, "key_vpn"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v35

    .line 3039
    const/16 v40, 0x0

    .line 3040
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v44

    if-nez v44, :cond_32

    .line 3041
    invoke-virtual/range {v35 .. v35}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v40

    .end local v40           #value:Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 3042
    .restart local v40       #value:Ljava/lang/String;
    if-eqz v40, :cond_32

    .line 3043
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Cannot start vpn, mocana returned error:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    :cond_32
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Cannot start vpn, mocana returned error"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3047
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 3053
    .end local v15           #entry:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #key:Ljava/lang/String;
    .end local v25           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;>;"
    .end local v33           #removeProfileError:Z
    .end local v35           #responseData:Landroid/app/enterprise/EnterpriseResponseData;
    .end local v40           #value:Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 3059
    :cond_35
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_RETRY_VPN_CONNECTION >> Network is not connected via isNetworkConnected()"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3063
    :pswitch_d
    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v44

    const-string v45, "handleMessage >> ACTION_VPN_INITIALIZE_BIND >> Handle MSG ACTION_VPN_INITIALIZE_BIND"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->initializeHashtable()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    .line 3068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    move-object/from16 v44, v0

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkPackagesOnStartup()V
    invoke-static/range {v44 .. v44}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$4400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    goto/16 :goto_0

    .line 2660
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 2680
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 2773
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method
