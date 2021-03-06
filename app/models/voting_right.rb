# `VotingRight` defines whether a `Voter` has already used his right to
# vote.
#
# Right to vote is maintained in a class of its own to separate concerns.
# This could have been an attribute of `Voter` instead, but then it would
# be messier to support elections where MutableVote is used.
class VotingRight < ApplicationRecord
  belongs_to :voter
  belongs_to :election

  validates_uniqueness_of :voter,
                            null: false,
                            scope: :election_id

  validates_presence_of :election_id,
                        :voter_id
end
