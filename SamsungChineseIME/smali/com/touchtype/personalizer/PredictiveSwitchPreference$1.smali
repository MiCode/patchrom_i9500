.class Lcom/touchtype/personalizer/PredictiveSwitchPreference$1;
.super Ljava/lang/Object;
.source "PredictiveSwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PredictiveSwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PredictiveSwitchPreference;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PredictiveSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/touchtype/personalizer/PredictiveSwitchPreference$1;->this$0:Lcom/touchtype/personalizer/PredictiveSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 52
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
