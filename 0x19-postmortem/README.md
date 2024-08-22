# 📝 Postmortem: User Authentication Service Outage

## Issue Summary

**⏰ Outage Duration:**

- **Start:** June 17, 2024, 9:00 AM UTC
- **End:** June 17, 2024, 11:30 AM UTC

**💥 Impact:**

- **Service Affected:** User Authentication Service
- **User Experience:** Users were unable to log in to the platform, disrupting all dependent services.
- **Affected Users:** Approximately 85% of active users.

---

## 🕵️ Root Cause

### The Incident in Brief:

🎉 Imagine our load balancer as a nightclub bouncer who decided to let only a limited number of people into the party. As the crowd outside grew, frustrations mounted, and soon, no one was getting in. Our authentication servers were like the frustrated party-goers stuck outside. After we gave the "bouncer" a pep talk and increased the entry limit, the party (and our services) were back in full swing!

**🔍 Technical Root Cause:**
A recent update to the load balancer configuration set the concurrent connection limit too low, causing a bottleneck. This overwhelmed the authentication servers, leading to their failure to process requests.

---

## 🗓️ Timeline

- **9:00 AM:** 🚨 Monitoring alert raised due to high error rates on login requests.
- **9:05 AM:** 🚀 Incident escalated to the DevOps team.
- **9:10 AM:** 🕵️ Initial investigation focused on database connectivity issues.
- **9:30 AM:** ✅ Database health confirmed; focus shifted to the application layer.
- **9:50 AM:** 🤔 Misleading direction: rollback of recent code deployment initiated.
- **10:10 AM:** 🔄 Rollback completed; issue persisted.
- **10:20 AM:** 🔍 Load balancer logs reviewed, identified misconfiguration.
- **10:30 AM:** 🔧 Configuration fix applied to the load balancer.
- **10:40 AM:** 📉 Gradual recovery observed as error rates decreased.
- **11:30 AM:** 🎉 Full service restored, incident resolved.

---

## 🛠️ Resolution

- ⚙️ The load balancer configuration was updated to increase the maximum number of concurrent connections.
- 🖥️ Redundant authentication servers were activated to manage the increased load and ensure high availability.

---

## 🚀 Corrective and Preventative Measures

### 🔧 Improvements:

1. **🛡️ Load Balancer Configuration Review:**
   - Implement regular reviews of load balancer settings to prevent misconfigurations.

2. **📊 Enhanced Monitoring:**
   - Set up more granular monitoring to detect and alert on connection limits and server health more effectively.

3. **🧪 Capacity Testing:**
   - Perform periodic stress tests on authentication servers to ensure they can handle peak loads.

### ✅ TODO List:

1. **🔧 Patch Load Balancer Configuration:**
   - Increase the connection limit and validate under simulated load conditions.

2. **📈 Implement Detailed Monitoring:**
   - Set up alerts for connection limits and server response times.

3. **🔍 Conduct Regular Reviews:**
   - Schedule bi-weekly configuration reviews for all critical infrastructure components.

4. **🤖 Automate Stress Testing:**
   - Develop and implement automated scripts for monthly stress testing of authentication servers.

5. **📚 Documentation and Training:**
   - Update documentation on load balancer settings and provide training for the DevOps team on resolving similar issues.

---

## 🏁 Conclusion

This postmortem has highlighted the importance of robust configuration management and monitoring. By implementing these measures, we aim to prevent similar incidents in the future and ensure a reliable authentication service for our users.
