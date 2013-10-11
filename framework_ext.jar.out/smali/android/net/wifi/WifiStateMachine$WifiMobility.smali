.class Landroid/net/wifi/WifiStateMachine$WifiMobility;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiMobility"
.end annotation


# instance fields
.field mAddNextWithoutCheck:Z

.field private mBlockNetID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockNetSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockNetTime:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPGeneral:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEAPTemporar:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIgnorableId:Ljava/lang/Integer;

.field private mLastSSID:Ljava/lang/String;

.field private mSSID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mUnBlockTimer:Ljava/util/Timer;

.field private mnetID:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 2

    .prologue
    .line 752
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    .line 754
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    .line 755
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    .line 757
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    .line 758
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    .line 759
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    .line 761
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    .line 762
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    .line 763
    new-instance v0, Ljava/util/Vector;

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    .line 764
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    .line 765
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    .line 766
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    .line 767
    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    .line 768
    return-void
.end method


# virtual methods
.method public addEAP(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 5
    .parameter "Id"
    .parameter "code"
    .parameter "lSSID"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 866
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 867
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v0, p3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 869
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 872
    :cond_0
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    const-string v0, "WifiMobilityEAP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added newnetwork tempor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " general: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v1

    .line 882
    :goto_1
    return v0

    .line 871
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 877
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 879
    :cond_4
    :goto_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 880
    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network upgraded tempor:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " general: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v2

    .line 882
    goto/16 :goto_1

    .line 878
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2
.end method

.method public addNetwork(Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 3
    .parameter "sSSID"
    .parameter "sTime"
    .parameter "snetID"

    .prologue
    .line 990
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 991
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 992
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 994
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " net id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 999
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1000
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1001
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1002
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1003
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mnetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " net id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkBlockedNetworks()V
    .locals 7

    .prologue
    .line 1011
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1012
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1013
    const-string v3, "WifiMobility"

    const-string v4, " -+- Checking networks blocks -+-"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1017
    .local v0, currTime:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1018
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v0, v3

    sget v5, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 1019
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1020
    const-string v3, "WifiMobility"

    const-string v4, "Network is still blocked, doing nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1023
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1024
    const-string v4, "WifiMobility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " -+- Network unlocked -+- "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1028
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    .line 1030
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1031
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_1

    .line 1034
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1035
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    if-eqz v3, :cond_5

    .line 1036
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->stopTimer()V

    .line 1039
    :cond_5
    return-void
.end method

.method public checkNetworkIsMobile(Ljava/lang/String;Ljava/lang/Long;I)Z
    .locals 12
    .parameter "sSSID"
    .parameter "sTime"
    .parameter "snetID"

    .prologue
    .line 1042
    const/4 v3, -0x1

    .line 1043
    .local v3, found:I
    const/4 v0, 0x0

    .line 1044
    .local v0, count:I
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1046
    .local v5, timedifference:J
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 1047
    const/4 v7, 0x1

    .line 1119
    :goto_0
    return v7

    .line 1049
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 1050
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 1051
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    .line 1052
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1053
    const-string v7, "WifiMobility"

    const-string v8, "... On demand - network was added without checking ..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 1057
    :cond_2
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 1058
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1059
    const-string v7, "WifiMobility"

    const-string v8, " --- Trying to seek network in blocked list ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 1063
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1064
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v7, v8, v10

    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    .line 1066
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v1, v8, v10

    .line 1067
    .local v1, diff:J
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1068
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timediff: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const-string v7, "WifiMobility"

    const-string v8, " --- Network is still  blocked, returning false ---"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1062
    .end local v1           #diff:J
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1075
    :cond_6
    const/4 v4, 0x0

    :goto_2
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 1076
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mSSID:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1077
    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    .line 1078
    move v3, v4

    .line 1080
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 1081
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1082
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found match #: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1086
    :cond_9
    const/4 v7, -0x1

    if-eq v3, v7, :cond_a

    .line 1087
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mTime:Ljava/util/Vector;

    invoke-virtual {v7, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 1088
    :cond_a
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1089
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final timedifference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "count of found networks is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_b
    const/4 v7, 0x2

    if-ge v0, v7, :cond_c

    .line 1092
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1095
    .end local v4           #i:I
    :cond_c
    const/4 v7, -0x1

    if-eq v3, v7, :cond_10

    sget v7, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    cmp-long v7, v5, v7

    if-gtz v7, :cond_10

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_10

    .line 1096
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$200()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 1097
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1098
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1100
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->startTimer()V

    .line 1117
    :goto_3
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1102
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v7, v8, v10

    sget v9, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_f

    .line 1103
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1104
    const-string v7, "WifiMobility"

    const-string v8, "Too much networks stored, refusing connection"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1108
    :cond_f
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1109
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1110
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1111
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetSSID:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1112
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetTime:Ljava/util/Vector;

    invoke-virtual {v7, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mBlockNetID:Ljava/util/Vector;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1114
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->startTimer()V

    goto :goto_3

    .line 1119
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public checkScanResults()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 801
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v6

    .line 802
    .local v6, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 803
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 804
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 805
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 806
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    iget v7, v5, Landroid/net/wifi/ScanResult;->level:I

    sget v8, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    if-ge v7, v8, :cond_3

    .line 807
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 808
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 809
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 810
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eqz v7, :cond_2

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 811
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-eq v7, v10, :cond_2

    .line 812
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 813
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignorable is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " had RSSI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disabling it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 804
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 823
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 824
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 825
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 826
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-ne v7, v10, :cond_2

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 827
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v7

    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiConfigStore;->enableNetwork(IZ)Z

    .line 828
    const/4 v7, 0x0

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 829
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 830
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " level is high enough, enabling it"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v6           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catch_0
    move-exception v2

    .line 840
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "WifiMobility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EXCEPTION"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    return-void
.end method

.method public clearIgnorableId()V
    .locals 1

    .prologue
    .line 777
    const/16 v0, 0x3e7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    .line 778
    return-void
.end method

.method public deleteEAP(Ljava/lang/Integer;)V
    .locals 4
    .parameter "Id"

    .prologue
    .line 890
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting : gen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tempor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 894
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 895
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 896
    return-void
.end method

.method public findEAP(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "lSSID"

    .prologue
    .line 854
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 855
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 856
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-string v2, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found SSID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPSSID:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 863
    .end local v0           #i:I
    :goto_1
    return-object v1

    .line 855
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v0           #i:I
    :cond_2
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1
.end method

.method public getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 789
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    .line 791
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    const/4 v0, 0x2

    goto :goto_0

    .line 793
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    const/4 v0, 0x3

    goto :goto_0

    .line 796
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 780
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 786
    :cond_0
    :goto_0
    return v0

    .line 782
    :cond_1
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 784
    goto :goto_0

    .line 786
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public handleEAP(Ljava/lang/String;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 898
    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handling message:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v6, "Not subscribed to the requested service"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 900
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 901
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 902
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 903
    .local v2, conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 904
    :cond_1
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 905
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_0

    .line 909
    .end local v2           #conf:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 910
    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail on SSID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_3
    const-string v6, "WifiMobilityEAP"

    const-string v7, "fail reading info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_4
    const-string v6, "Temporarily denied access"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "General failure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 916
    :cond_5
    const/4 v0, -0x1

    .line 917
    .local v0, AddEAPcode:I
    const/4 v1, -0x1

    .line 918
    .local v1, EAPdisableCode:I
    const-string v6, "General failure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 919
    const/4 v0, 0x1

    .line 920
    const/16 v1, 0x9

    .line 922
    :cond_6
    const-string v6, "Temporarily denied access"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 923
    const/4 v0, 0x2

    .line 924
    const/16 v1, 0x8

    .line 926
    :cond_7
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 927
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 928
    .local v5, temp:Ljava/lang/Integer;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->findEAP(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 929
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->addEAP(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 930
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->shouldBlock(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 931
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 932
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 933
    .restart local v2       #conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eq v6, v7, :cond_9

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 934
    :cond_9
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 935
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    goto :goto_1

    .line 938
    .end local v2           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->deleteEAP(Ljava/lang/Integer;)V

    .line 961
    .end local v0           #AddEAPcode:I
    .end local v1           #EAPdisableCode:I
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #temp:Ljava/lang/Integer;
    :cond_b
    :goto_2
    return-void

    .line 941
    .restart local v0       #AddEAPcode:I
    .restart local v1       #EAPdisableCode:I
    .restart local v5       #temp:Ljava/lang/Integer;
    :cond_c
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->shouldBlock(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 942
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 943
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 944
    .restart local v2       #conf:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    if-eq v6, v7, :cond_e

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    iget-object v7, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 945
    :cond_e
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 946
    const-string v6, "WifiMobilityEAP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ssid is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_f
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v6

    iget v7, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v7, v1}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 949
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiNative;->saveConfig()Z

    .line 950
    const-string v6, "WifiMobilityEAP"

    const-string v7, "not subscribed handled"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 953
    .end local v2           #conf:Landroid/net/wifi/WifiConfiguration;
    :cond_10
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->deleteEAP(Ljava/lang/Integer;)V

    goto :goto_2

    .line 957
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #temp:Ljava/lang/Integer;
    :cond_11
    const-string v6, "WifiMobilityEAP"

    const-string v7, "fail reading info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 770
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 771
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setIgnorableId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "Id"

    .prologue
    .line 774
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mIgnorableId:Ljava/lang/Integer;

    .line 775
    return-void
.end method

.method public setLastSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "lSSID"

    .prologue
    .line 851
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mLastSSID:Ljava/lang/String;

    .line 852
    return-void
.end method

.method public shouldBlock(Ljava/lang/Integer;)Z
    .locals 3
    .parameter "Id"

    .prologue
    const/4 v2, 0x3

    .line 886
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPGeneral:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mEAPTemporar:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 887
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 963
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 964
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    .line 965
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "WifiMobility"

    const-string v1, "Started timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$WifiMobility$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility$1;-><init>(Landroid/net/wifi/WifiStateMachine$WifiMobility;)V

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$600()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 977
    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 981
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    const-string v0, "WifiMobility"

    const-string v1, "Stoped timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mUnBlockTimer:Ljava/util/Timer;

    .line 987
    :cond_1
    return-void
.end method

.method public unLockMobilityByNetID(Ljava/lang/Integer;)V
    .locals 3
    .parameter "snetID"

    .prologue
    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility;->mAddNextWithoutCheck:Z

    .line 845
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const-string v0, "WifiMobility"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received mnetID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->setIgnorableId(Ljava/lang/Integer;)V

    .line 849
    return-void
.end method
