.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnState"
.end annotation


# static fields
.field private static final RUNNING:I = 0x1

.field private static final STOPPED:I


# instance fields
.field private mCid:I

.field private mInterface:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mProfileName:Ljava/lang/String;

.field private mState:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter
    .parameter "profileName"
    .parameter "packageName"
    .parameter "uid"
    .parameter "cid"

    .prologue
    .line 3084
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 3085
    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "profileName"
    .parameter "packageName"
    .parameter "uid"
    .parameter "cid"
    .parameter "interfaceName"
    .parameter "state"

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3088
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mProfileName:Ljava/lang/String;

    .line 3089
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mPackageName:Ljava/lang/String;

    .line 3090
    iput-object p6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mInterface:Ljava/lang/String;

    .line 3091
    iput p4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mUid:I

    .line 3092
    iput p5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mCid:I

    .line 3093
    iput p7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mState:I

    .line 3094
    return-void
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 3129
    iget v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mCid:I

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 3137
    iget v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mState:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 3121
    iget v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mUid:I

    return v0
.end method

.method public setCid(I)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 3133
    iput p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mCid:I

    .line 3134
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0
    .parameter "interfaceName"

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mInterface:Ljava/lang/String;

    .line 3118
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 3109
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mPackageName:Ljava/lang/String;

    .line 3110
    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 0
    .parameter "profileName"

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mProfileName:Ljava/lang/String;

    .line 3102
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 3141
    iput p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mState:I

    .line 3142
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 3125
    iput p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->mUid:I

    .line 3126
    return-void
.end method
