.class public Lcom/touchtype/personalizer/PredictiveSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "PredictiveSwitchPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/touchtype/personalizer/PredictiveSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 75
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    sget-object v2, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->TAG:Ljava/lang/String;

    const-string v3, "getContext() returns null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0260

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, view:Landroid/view/View;
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPrediction()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->setChecked(Z)V

    .line 48
    new-instance v1, Lcom/touchtype/personalizer/PredictiveSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/touchtype/personalizer/PredictiveSwitchPreference$1;-><init>(Lcom/touchtype/personalizer/PredictiveSwitchPreference;)V

    invoke-virtual {p0, v1}, Lcom/touchtype/personalizer/PredictiveSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    return-object v0
.end method
