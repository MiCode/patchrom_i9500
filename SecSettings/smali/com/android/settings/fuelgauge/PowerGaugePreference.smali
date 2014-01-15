.class public Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private mInfo:Lcom/android/settings_ex/fuelgauge/BatterySipper;

.field private mProgress:I

.field private mProgressText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings_ex/fuelgauge/BatterySipper;)V
    .locals 1
    .parameter "context"
    .parameter "icon"
    .parameter "info"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 41
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iput-object p3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 43
    return-void

    .line 41
    .restart local p2
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .end local p2
    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method getInfo()Lcom/android/settings_ex/fuelgauge/BatterySipper;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatterySipper;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 61
    .local v0, progress:Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgress:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 63
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, text1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setPercent(DD)V
    .locals 6
    .parameter "percentOfMax"
    .parameter "percentOfTotal"

    .prologue
    .line 46
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgress:I

    .line 47
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090987

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgressText:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 50
    return-void
.end method
