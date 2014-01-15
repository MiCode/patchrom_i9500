.class Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;
.super Landroid/preference/Preference;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->initPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->loadDormantTime()V

    .line 234
    const v2, 0x7f0b0133

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    .local v0, mFormBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #setter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$002(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 236
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    iget-object v3, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mStarthour:I
    invoke-static {v3}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$100(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mStartmin:I
    invoke-static {v4}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$200(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)I

    move-result v4

    #calls: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->setStartTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$300(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;II)V

    .line 237
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$000(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3$1;-><init>(Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v2, 0x7f0b0135

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 244
    .local v1, mtoBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #setter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$602(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    iget-object v3, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mEndhour:I
    invoke-static {v3}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$700(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mEndmin:I
    invoke-static {v4}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$800(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)I

    move-result v4

    #calls: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->setEndTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$900(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;II)V

    .line 246
    iget-object v2, p0, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings_ex/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings;->access$600(Lcom/android/settings_ex/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3$2;-><init>(Lcom/android/settings_ex/dormantmode/DormantmodeSettings$3;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    return-void
.end method
