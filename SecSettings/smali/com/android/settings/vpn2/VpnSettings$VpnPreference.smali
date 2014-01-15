.class Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
.super Landroid/preference/Preference;
.source "VpnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpnPreference"
.end annotation


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V
    .locals 2
    .parameter "context"
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 428
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mState:I

    .line 432
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 433
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 435
    iput-object p2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 436
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update()V

    .line 437
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter "preference"

    .prologue
    .line 469
    const/4 v1, -0x1

    .line 470
    .local v1, result:I
    instance-of v2, p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 471
    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 472
    .local v0, another:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    iget v2, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mState:I

    iget v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mState:I

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int v1, v2, v3

    if-nez v1, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    .line 478
    .end local v0           #another:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 426
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method update()V
    .locals 4

    .prologue
    .line 454
    iget v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mState:I

    if-gez v2, :cond_0

    .line 455
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, types:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 463
    .end local v1           #types:[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 465
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, states:[Ljava/lang/String;
    iget v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mState:I

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method update(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 449
    iput p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mState:I

    .line 450
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update()V

    .line 451
    return-void
.end method

.method update(Lcom/android/internal/net/VpnProfile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update()V

    .line 446
    return-void
.end method
